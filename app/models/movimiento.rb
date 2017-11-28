class Movimiento < ApplicationRecord
  paginates_per 10

  belongs_to :transaccion
  belongs_to :cuenta
  belongs_to :empresa

  attr_accessor :usuario

  validates_presence_of :cuenta_id, :fecha_mov, :transaccion_id, :importe
  validates_numericality_of :importe, greater_than: 0
  validates_inclusion_of :transaccion_id, in: :transacciones


  #has_many :item_movimiento
  #attr_accesor :item_movimiento_id

  attr_writer :saldo
  attr_accessor :agrupar

  def saldo
  	@saldo || 0
  end

  def es_debito
  	transaccion.es_debito
  end

  def importe_real
  	(es_debito)? -importe : importe
  end

  def tipo_transaccion_id
  	(transaccion.nil?)? 0 : transaccion.tipo_transaccion_id
  end

  def items
    logger.debug "@items = #{@items}"
    @items || [Movimiento.new]
  end

  def items=(values)
    logger.debug '- items=(values) -'
    @items, @errores = [], []
    values.each do |i|
      logger.debug i.to_yaml
      m = Movimiento.new(cuenta_id: cuenta_id, fecha_mov: fecha_mov,
            transaccion: Transaccion.find_by_id(i[:transaccion_id]),
            importe: i[:importe])
      @items << m
    end
  end

  def save_items(empresa_id)
    logger.debug "- save_items -"
    @items.each do |m|
      m.usuario = usuario
      m.empresa_id = empresa_id
      if not m.valid?
        @errores = (@errores + m.errors.full_messages).uniq
        logger.debug "errores = #{m.errors.to_hash(true)}"
        logger.debug "@errores = #{@errores}"
      end
    end
    if @errores.blank?
      if agrupar
        logger.debug 'graba agrupando'
        items_agrup = @items.group_by { |m| m.transaccion_id }
        items_agrup.map do |k,v|
          total = items_agrup[k].sum { |m1| m1.importe }
          m = @items.find{|m1| m1.transaccion_id == k }
          m2 = Movimiento.new(m.attributes)
          m2.importe = total
          m2.empresa_id = empresa_id
          m2.save
        end
      else
        logger.debug 'grabando sin agrupar'
        @items.each do |i|
          i.empresa_id = empresa_id
          i.save
        end
      end
    else
      logger.debug "cargando errores - errors = #{errors}"
      errors.clear
      @errores.each{|e| errors.add(:base, e)}
    end
    logger.debug "@errores.blank? = #{@errores.blank?} | @errores = #{@errores} | errors = #{errors}"
    return @errores.blank?
  end

  def transacciones
    usuario.transacciones.all_for_select.map { |t| t[1] }
  end
end

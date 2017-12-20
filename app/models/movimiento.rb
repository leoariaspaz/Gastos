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
            transaccion: transacciones.find_by_id(i[:transaccion_id]),
            importe: i[:importe])
      if not m.valid?
        @errores = (@errores + m.errors.full_messages).uniq
        logger.debug "errores = #{m.errors.to_hash(true)}"
        logger.debug "@errores = #{@errores}"
      end
      @items << m
    end
  end

  def save_items(empresa_id)
    logger.debug "- save_items -"
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

  def self.movimientos_con_saldo(fecha_desde, fecha_hasta, cuenta_id)
    movs = Movimiento.joins(:transaccion)
                      .select("movimientos.updated_at, movimientos.fecha_mov, transacciones.descripcion AS trx_desc, 
                        movimientos.importe, movimientos.created_at, movimientos.transaccion_id, transacciones.es_debito,
                        movimientos.transaccion_id")
                      .where("movimientos.cuenta_id = ? and movimientos.fecha_mov >= ? and movimientos.fecha_mov <= ?", 
                        cuenta_id, fecha_desde, fecha_hasta)
                      .order(fecha_mov: :asc, created_at: :asc)
    if not movs.empty?
      anteriores = Movimiento.joins(:transaccion)
                    .where("movimientos.cuenta_id = ? and movimientos.created_at < ?", cuenta_id, movs.first.created_at)
      debitos = anteriores.where("transacciones.es_debito = ?", true).sum(:importe)
      creditos = anteriores.where("transacciones.es_debito = ?", false).sum(:importe)
      saldo_inicial = Cuenta.find(cuenta_id).saldo_inicial
      saldo_anterior = saldo_inicial + creditos - debitos
      movs.reverse_each do |m|
        m.saldo = saldo_anterior + m.importe_real
        saldo_anterior = m.saldo
      end
    end
    return movs
  end
end

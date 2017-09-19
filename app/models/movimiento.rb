class Movimiento < ApplicationRecord
  belongs_to :transaccion
  belongs_to :cuenta

  validates_presence_of :cuenta_id, :fecha_mov, :transaccion_id, :importe
  validates_numericality_of :importe, greater_than: 0
  validates_inclusion_of :transaccion_id, in: -> (transaccion_id) { Transaccion.all_for_select.map { |t| t[1] } }
  
  #has_many :item_movimiento
  #attr_accesor :item_movimiento_id

  attr_writer :saldo

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
      m = Movimiento.new(cuenta_id: cuenta_id, fecha_mov: fecha_mov, transaccion: Transaccion.find_by_id(i[:transaccion_id]), 
            importe: i[:importe])
      if not m.valid?
        @errores = (@errores + m.errors.full_messages).uniq
        logger.debug "errores = #{m.errors.to_hash(true)}"
        logger.debug "@errores = #{@errores}"
      end
      @items << m
    end
  end

  def save_items
    logger.debug "- save_items -"
    if @errores.blank?
      @items.each {|i| i.save}
    else
      logger.debug "cargando errores - errors = #{errors}"
      errors.clear
      @errores.each{|e| errors.add(:base, e)}
    end
    logger.debug "@errores.blank? = #{@errores.blank?} | @errores = #{@errores} | errors = #{errors}"
    return @errores.blank?
  end
end

class Movimiento < ApplicationRecord
  belongs_to :transaccion
  belongs_to :cuenta

  validates_presence_of :cuenta_id, :fecha_mov, :transaccion_id, :importe
  validates_numericality_of :importe, greather_than: 0
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
    logger.debug 'Cargando items'
    @items, @errors = [], {}
    values.each do |i|
      logger.debug i.to_yaml      
      m = Movimiento.new(cuenta_id: cuenta_id, fecha_mov: fecha_mov, transaccion: Transaccion.find_by_id(i[:transaccion_id]), 
            importe: i[:importe])
      if not m.valid?
        logger.debug "errores = #{m.errors.to_yaml}"
        @errors.merge(m.errors.to_hash(true))
      end
      @items << m
    end
  end

  def save_items
    logger.debug "@errors.blank? = #{@errors.blank?} | @errors = #{@errors}"
    if @errors.blank?
      @items.each {|i| i.save}
    else
      # [#<ActiveModel::Errors:0x0000000f3fcbe0 @base =#<Movimiento id: nil, fecha_mov: "2017-09-19", transaccion_id: 311, importe: #< BigDecimal:f3acb90,'0.0',9(18)>, created_at: nil, updated_at: nil, cuenta_id: ni l>, @messages={:cuenta=>["debe existir"], :cuenta_id=>["no puede estar en blanco "]}, @details={:cuenta=>[{:error=>:blank}], :cuenta_id=>[{:error=>:blank}]}>, #< ActiveModel::Errors:0x0000000dbe67e0 @base=#<Movimiento id: nil, fecha_mov: "201 7-09-19", transaccion_id: 355, importe: #<BigDecimal:eae38b0,'0.0',9(18)>, creat ed_at: nil, updated_at: nil, cuenta_id: nil>, @messages={:cuenta=>["debe existir "], :cuenta_id=>["no puede estar en blanco"]}, @details={:cuenta=>[{:error=>:bla nk}], :cuenta_id=>[{:error=>:blank}]}>] end
      @errors.each do |e|

      end
    return @errors.blank?
  end
end

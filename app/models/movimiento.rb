class Movimiento < ApplicationRecord
  paginates_per 50

  belongs_to :transaccion
  belongs_to :cuenta
  belongs_to :empresa
  belongs_to :usuario

  # attr_accessor :usuario

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

  def self.movimientos_entre_fechas(fecha_desde, fecha_hasta, cuenta_id)
    movs = self
            .joins(:empresa)
            .joins(transaccion: :tipo_transaccion)
            .joins(:cuenta)
            .select("movimientos.*, transacciones.descripcion AS trx_desc, transacciones.es_debito, 
              tipos_transacciones.descripcion AS ttrx_desc, cuentas.saldo_inicial")
            .where("empresas.id = ? and movimientos.cuenta_id = ? and movimientos.fecha_mov >= ? and movimientos.fecha_mov <= ?",
              Usuario.current_user.empresa_id, cuenta_id, fecha_desde, fecha_hasta)
    
    # SELECT movimientos.*, transacciones.descripcion AS trx_desc, cuentas.saldo_inicial, transacciones.es_debito, 
    #         tipos_transacciones.descripcion AS ttrx_desc 
    # FROM "movimientos" 
    # INNER JOIN "transacciones" ON "transacciones"."id" = "movimientos"."transaccion_id" 
    # INNER JOIN "tipos_transacciones" ON "tipos_transacciones"."id" = "transacciones"."tipo_transaccion_id" 
    # INNER JOIN "cuentas" ON "cuentas"."id" = "movimientos"."cuenta_id" 
    # WHERE "movimientos"."empresa_id" = ? AND 
    #       (movimientos.cuenta_id = '43' and movimientos.fecha_mov >= '2018-09-01' and movimientos.fecha_mov <= '2018-10-08') 
    # ORDER BY "movimientos"."fecha_mov" ASC, "movimi entos"."created_at" ASC
    
    return movs
  end

  def self.movimientos_con_saldo(fecha_desde, fecha_hasta, cuenta_id)
    movs = movimientos_entre_fechas(fecha_desde, fecha_hasta, cuenta_id)
            .order(fecha_mov: :asc, created_at: :asc)
    result = []
    if movs.any?
      anteriores = Usuario.current_user.movimientos.joins(:transaccion)
                    .where("movimientos.cuenta_id = ? and movimientos.created_at < ?", cuenta_id, movs.first.created_at)
      debitos = anteriores.where("transacciones.es_debito = ?", true).sum(:importe)
      creditos = anteriores.where("transacciones.es_debito = ?", false).sum(:importe)
      saldo_anterior = movs.first.saldo_inicial + creditos - debitos
      mov_sdoant = movs.first.dup
      mov_sdoant.saldo = saldo_anterior
      movs.each do |m|
        if m.es_contrasiento
          m.saldo = saldo_anterior
        else
          if m.es_debito
            m.saldo = saldo_anterior - m.importe
          else
            m.saldo = saldo_anterior + m.importe
          end
        end
        saldo_anterior = m.saldo
      end
      mov_sdoant.class_eval { attr_accessor :trx_desc }
      mov_sdoant.trx_desc = " - Saldo anterior -"
      mov_sdoant.importe = nil
      mov_sdoant.transaccion_id = nil
      mov_sdoant.fecha_mov = nil
      result = movs.to_a
      result.unshift(mov_sdoant)
    end
    return result
  end

  def self.movimientos_con_saldo_por_usuario(fecha_desde, fecha_hasta, cuenta_id)
    # movs = Usuario.current_user.movimientos
    #         .joins(transaccion: :tipo_transaccion)
    #         .joins(:cuenta)
    #         .join(:usuario)
    #         .select("movimientos.*, transacciones.descripcion AS trx_desc, transacciones.es_debito, 
    #           tipos_transacciones.descripcion AS ttrx_desc, cuentas.saldo_inicial, usuarios.nombre AS nombre_usuario")
    #         .where("movimientos.cuenta_id = ? and movimientos.fecha_mov >= ? and movimientos.fecha_mov <= ?",
    #           cuenta_id, fecha_desde, fecha_hasta)

    movs = movimientos_entre_fechas(fecha_desde, fecha_hasta, cuenta_id)
            .joins(:usuario)
            .order(fecha_mov: :asc, created_at: :asc)
    result = []
    if movs.any?
      anteriores = Usuario.current_user.movimientos.joins(:transaccion)
                    .where("movimientos.cuenta_id = ? and movimientos.created_at < ?", cuenta_id, movs.first.created_at)
      debitos = anteriores.where("transacciones.es_debito = ?", true).sum(:importe)
      creditos = anteriores.where("transacciones.es_debito = ?", false).sum(:importe)
      saldo_anterior = movs.first.saldo_inicial + creditos - debitos
      mov_sdoant = movs.first.dup
      mov_sdoant.saldo = saldo_anterior
      movs.each do |m|
        if m.es_contrasiento
          m.saldo = saldo_anterior
        else
          if m.es_debito
            m.saldo = saldo_anterior - m.importe
          else
            m.saldo = saldo_anterior + m.importe
          end
        end
        saldo_anterior = m.saldo
      end
      mov_sdoant.class_eval { attr_accessor :trx_desc }
      mov_sdoant.trx_desc = " - Saldo anterior -"
      mov_sdoant.importe = nil
      mov_sdoant.transaccion_id = nil
      mov_sdoant.fecha_mov = nil
      result = movs.to_a
      result.unshift(mov_sdoant)
    end
    return result    
  end
end

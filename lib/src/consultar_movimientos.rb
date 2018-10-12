require 'pp'

def group_by_usuario
	# puts (1..6).group_by {|i| i%3}

	empresa_id = Usuario.find(9).empresa_id
  movs = Movimiento
          .joins(:empresa)
          .joins(transaccion: :tipo_transaccion)
          .joins(:cuenta)
          .select("movimientos.*, transacciones.descripcion AS trx_desc, transacciones.es_debito, 
            tipos_transacciones.descripcion AS ttrx_desc, cuentas.saldo_inicial")
          .where("empresas.id = ? and movimientos.cuenta_id = ? and movimientos.fecha_mov >= ? and movimientos.fecha_mov <= ?",
            empresa_id, 43, Date.new(2018, 9, 1), Date.new(2018, 10, 3))
          .joins(:usuario)
          .select("usuarios.nombre AS nombre_usuario")
          .order("nombre_usuario ASC", fecha_mov: :asc, created_at: :asc)
	movs.group_by{|m| "#{m.usuario_id} - #{m.nombre_usuario}"}.each do |k, v|
		puts k
		# TABLE_HEADER2 = [["Fec. Real", "Fec. Mov.", "Cód. Trx.", "Transacción", "Crédito", "Débito"]]
		tp v, "created_at", "updated_at", "fecha_mov", "importe"
	end
end

def print_movimientos
	usr = Usuario.find(9)

	movs = usr.movimientos.joins(transaccion: :tipo_transaccion).joins(:cuenta)
		      .select("movimientos.*, transacciones.descripcion AS trx_desc, transacciones.es_debito, tipos_transacciones.descripcion AS ttrx_desc")
	        .where("movimientos.cuenta_id = ? and movimientos.fecha_mov >= ? and movimientos.fecha_mov <= ?", 
	        	43, Date.new(2018, 9, 1), Date.new(2018, 10, 3))

	movs = Usuario.find(9).movimientos
	            .joins(transaccion: :tipo_transaccion)
	            .joins(:cuenta)
	            .select("movimientos.*, transacciones.descripcion AS trx_desc, transacciones.es_debito, 
	              tipos_transacciones.descripcion AS ttrx_desc, cuentas.saldo_inicial, usuarios.nombre AS nombre_usuario")
	            .where("movimientos.cuenta_id = ? and movimientos.fecha_mov >= ? and movimientos.fecha_mov <= ?",
	        			43, Date.new(2018, 9, 1), Date.new(2018, 10, 3))

	movs = movs.joins(empresa: :usuario)

	puts movs.to_sql
	# puts ""
	# movs = movs.to_a

	exit

	if movs.empty?
		puts "sin filas"
		exit
	end

	result = movs.map do |m|
		t = Movimiento.new
		t.class_eval do
			attr_accessor :fec_real		
			attr_accessor :ttrx_desc
			attr_accessor :trx_desc
		end
		if m.es_contrasiento then
			t.fec_real = m.created_at
		else
			t.fec_real = m.updated_at
		end
		t.ttrx_desc = m.ttrx_desc
		t.trx_desc = m.trx_desc
		t.importe = m.importe
		t
	end

	tp result, "fec_real", "ttrx_desc", "trx_desc", "importe"
	exit

	# tp movs, "created_at", "updated_at", "fecha_mov", "importe", "es_contrasiento", "ttrx_desc", "trx_desc", "es_debito"

	asientos = movs.where(es_contrasiento: false)	#.to_a.select{|m| m.es_contrasiento } # push(movs.where(es_contrasiento: true))
	contrasientos = movs.where(es_contrasiento: true)	#.to_a.select{|m| m.es_contrasiento } # push(movs.where(es_contrasiento: true))
	# tp movs2, "created_at", "updated_at", "fecha_mov", "importe", "es_contrasiento", "ttrx_desc", "trx_desc", "es_debito"	

	x = movs.to_a.concat(movs2)
	tp x, "created_at", "updated_at", "fecha_mov", "importe", "es_contrasiento", "ttrx_desc", "trx_desc", "es_debito"	

	y = x.map do |t|
		m = Movimiento.new	# (created_at: t.created_at, fecha_mov: t.fecha_mov, ttrx_desc: t.ttrx_desc)
		m.fecha_mov = t.fecha_mov
		m.class_eval do
			attr_accessor :ttrx_desc, :fec_real
		end
		m.ttrx_desc = t.ttrx_desc
		if t.es_contrasiento then
			m.fec_real = t.created_at 
		else
			m.fec_real = t.updated_at
		end
		m
	end
	tp y, "fec_real", "fecha_mov", "ttrx_desc"	
end

group_by_usuario

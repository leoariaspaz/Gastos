# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def crear_cuenta(descripcion, saldo)
	puts "Buscando cuenta #{descripcion}"
	cuenta = Cuenta.where(descripcion: descripcion).first
	if cuenta.nil?
		cuenta = Cuenta.create(descripcion: descripcion, saldo_inicial: saldo, habilitado: true)
	end	
	return cuenta
end

def cargar_cuentas
	@cuenta_efectivo = crear_cuenta("Efectivo", 13484.40)
	@cuenta_bse = crear_cuenta("Banco Santiago del Estero", 27305.51)
	@cuenta_cris = crear_cuenta("Banco Santiago del Estero - Cris", 0)
	@cuenta_hipotecario = crear_cuenta("Banco Hipotecario", 5019.26)
end

def split_line(line)
	splitted_line = line.strip.split(%r{\t})
	#s = ""
	#splitted_line.each do |word|
	#	if s == ""
	#		s = "[" + word
	#	else
	#		s += ", " + word
	#	end
	#end
	#puts (s + "]")
	return splitted_line
end

def cargar_movimientos(cuenta, archivo)
	Movimiento.where(cuenta: cuenta).delete_all
	File.open(Rails.root.to_s + "/db/seeds/" + archivo, "r") do |f|
		f.each_line do |line|
			mov = split_line(line)
			tipo_tran = TipoTransaccion.where(descripcion: mov[1].strip).first
			if tipo_tran.nil?
				tipo_tran = TipoTransaccion.create(descripcion: mov[1].strip, habilitado: true)
			end
			tran = Transaccion.where(descripcion: mov[2].strip, tipo_transaccion: tipo_tran).first
			importe = mov[3].to_f
			if tran.nil?
				tran = Transaccion.create(descripcion: mov[2].strip, tipo_transaccion: tipo_tran, habilitado: true,
								es_debito: importe < 0)
			end
			Movimiento.create(fecha_mov: Date.parse(mov[0]), transaccion: tran, importe: importe.abs, 
				cuenta: cuenta)
		end
	end
end

cargar_cuentas

puts "Cargando movimientos de: "

puts "Cuenta: #{@cuenta_efectivo.id} - #{@cuenta_efectivo.descripcion}"
cargar_movimientos(@cuenta_efectivo, "efectivo.txt")

puts "Cuenta: #{@cuenta_bse.id} - #{@cuenta_bse.descripcion}"
cargar_movimientos(@cuenta_bse, "debitobse.txt")

puts "Cuenta: #{@cuenta_hipotecario.id} - #{@cuenta_hipotecario.descripcion}"
cargar_movimientos(@cuenta_hipotecario, "debitohipotecario.txt")

puts "Cuenta: #{@cuenta_cris.id} - #{@cuenta_cris.descripcion}"
cargar_movimientos(@cuenta_cris, "debitobse-cris.txt")

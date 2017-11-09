require File.expand_path('../../../config/environment',  __FILE__)
require 'movimiento'
require 'transaccion'

m1 = Movimiento.new(transaccion: Transaccion.first, importe: 100)
m2 = Movimiento.new(transaccion: Transaccion.first, importe: 200)
m3 = Movimiento.new(transaccion: Transaccion.second, importe: 400)

mov = [m1, m2, m3]

# mov.each { |m| puts m.attributes.to_yaml }

mov.each { |m| puts "#{m.transaccion_id} - #{m.transaccion.descripcion} => #{m.importe}" }
mov_agrup_desc = mov.group_by { |m| m.transaccion.descripcion }
mov_agrup = mov.group_by { |m| m.transaccion_id }

puts "=> Suma por clave"
mov_agrup_desc.keys.each { |m| puts "#{m} = " + mov_agrup_desc[m].sum { |m1| m1.importe }.to_s }

puts "=> Movimientos agrupados"
mov_agrup.map do |k,v| 
	total = mov_agrup[k].sum { |m1| m1.importe }
	m = mov.find{|m1| m1.transaccion_id == k }
	m2 = Movimiento.new(m.attributes)
	m2.importe = total
	puts m2.attributes.to_yaml
end

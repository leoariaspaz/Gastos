require File.expand_path('../../../config/environment',  __FILE__)
require 'cuenta'
# a = $('.row').not('.panel').map(function(){
#   var result = new Object();
#   result.trx = $(this).find('.transaccion select').val();
#   result.importe = $(this).find('#movimiento_items__importe').val();
#   return result;
# }).get();
# $.get('/movimientos/carga_masiva/sumar', {items: a}, function(data) {}, 'json');

def sumar_agrupado
	p = {"0"=>{"trx"=>"262", "importe"=>"100"}, 
			 "1"=>{"trx"=>"304", "importe"=>"200"}, 
			 "2"=>{"trx"=>"257", "importe"=>"400"}, 
			 "3"=>{"trx"=>"212", "importe"=>"50"}, 
			 "4"=>{"trx"=>"262", "importe"=>"75"}, 
			 "5"=>{"trx"=>"212", "importe"=>"125"}}


	puts p.length
	tmp = []
	p.each { |k,v| tmp << v }
	total = tmp.inject(0){|sum,x| sum + x["importe"].to_f }

	puts "p =========="
	puts p

	puts "tmp ========="
	puts tmp

	puts "total => #{total}"	
end

TIPOS_INFORME = [["Ordenado por fecha", 1], ["Agrupado por usuario", 2]]
p TIPOS_INFORME.any? { |ti| ti[1] == 3 }
p TIPOS_INFORME.select { |ti| ti[1] == 2 }.first[0]
# p Cuenta.find(Cuenta.first).descripcion

def NewDate(fecha, separador)
	fecha_array = Array.new(3).zip(fecha.split(separador)).transpose.last.reverse.map(&:to_i)
	return Date.new(fecha_array[0], fecha_array[1], fecha_array[2])	
end
p NewDate("01/12/2017", "/")

# fecha = "01/12/2017"
# separador = "/"
# sep = separador || "/"
# p fecha = Array.new(3).zip(fecha.split(separador)).transpose.last.reverse.map(&:to_i)
# p Date.new(fecha[0], fecha[1], fecha[2])
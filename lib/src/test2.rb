require File.expand_path('../../../config/environment',  __FILE__)
require 'cuenta'
require "movimiento"
include ActionView::Helpers::NumberHelper

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


def informes
	tipos_informe = [["Ordenado por fecha", 1], ["Agrupado por usuario", 2]]
	p tipos_informe.any? { |ti| ti[1] == 3 }
	p tipos_informe.select { |ti| ti[1] == 2 }.first[0]
	# p Cuenta.find(Cuenta.first).descripcion	
end

def NewDate(fecha, separador = "/")
	fecha_array = Array.new(3).zip(fecha.split(separador)).transpose.last.reverse.map(&:to_i)
	return Date.new(fecha_array[0], fecha_array[1], fecha_array[2])	
end

def fechas
	p NewDate("01/12/2017", "/")
	# fecha = "01/12/2017"
	# separador = "/"
	# sep = separador || "/"
	# p fecha = Array.new(3).zip(fecha.split(separador)).transpose.last.reverse.map(&:to_i)
	# p Date.new(fecha[0], fecha[1], fecha[2])	
end

# p Movimiento
# 		.select("min(movimientos.fecha_mov) minFecha, max(movimientos.fecha_mov) as MaxFecha, movimientos.cuenta_id")
# 		.group("cuenta_id")
# 		.to_sql
# exit
# 2016-10-02|2017-09-09|5
# 2016-10-02|2017-09-08|6
# 2017-07-20|2017-09-08|7
# 2016-10-01|2017-09-09|8

cuenta_id = 5
fecha_desde = "01/01/2017"
fecha_hasta = "01/07/2017"
@movimientos = Movimiento.joins(:transaccion)
									.select("movimientos.updated_at, movimientos.fecha_mov, transacciones.descripcion AS trx_desc, 
                        movimientos.importe, movimientos.created_at, movimientos.transaccion_id, transacciones.es_debito,
                        movimientos.transaccion_id")
              		.where("movimientos.cuenta_id = ? and movimientos.fecha_mov >= ? and movimientos.fecha_mov <= ?", 
              			cuenta_id, NewDate(fecha_desde), NewDate(fecha_hasta))
              		.order(fecha_mov: :asc, created_at: :asc)
# p @movimientos.to_sql
# .take(10)


# SELECT movimientos.* 
# FROM movimientos 
# INNER JOIN transacciones ON transacciones.id = movimientos.transaccion_id 
# WHERE movimientos.cuenta_id = 5 	AND 
# 			(movimientos.fecha_mov >= '2017/07/01') AND 
# 			(movimientos.fecha_mov <= '2017/12/31') 
# ORDER BY movimientos.fecha_mov ASC, movimientos.created_at ASC
# 
# SELECT movimientos.* FROM movimientos INNER JOIN transacciones ON transacciones.id = movimientos.transaccion_id WHERE movimientos.# cuenta_id = 5 	AND (movimientos.fecha_mov >= '2017/07/01') AND (movimientos.fecha_mov <= '2017/12/31') ORDER BY movimientos.# fecha_mov ASC, movimientos.created_at ASC;


anteriores = Movimiento.joins(:transaccion)
              .where("movimientos.cuenta_id = ? and movimientos.created_at < ?", cuenta_id, @movimientos.first.created_at)
debitos = anteriores.where("transacciones.es_debito = ?", true).sum(:importe)
creditos = anteriores.where("transacciones.es_debito = ?", false).sum(:importe)
saldo_inicial = Cuenta.find(cuenta_id).saldo_inicial
saldo_anterior = saldo_inicial + creditos - debitos
@movimientos.reverse_each do |m|
	m.saldo = saldo_anterior + m.importe_real
	saldo_anterior = m.saldo
end

p @movimientos

a = []
a += [[ 1 ]]
a += [[ 2 ]]
p a

def add(x)
	[ x ]
end

p 1.upto(2).map { |n| add(n)  }

def detail_row2(movimiento)
  if movimiento.es_debito
    credito = 0
    debito = movimiento.importe
  else
    credito = movimiento.importe
    debito = 0
  end
  # if movimiento.es_contrasiento
  #   if movimiento.es_debito
  #     deb = {content: "(c) #{deb}", font_style: :italic}
  #   else
  #     cred = {content: "(c) #{cred}", font_style: :italic}
  #   end
  # else
    cred = number_to_currency(credito)
    deb = number_to_currency(debito)      
  # end
  sdo = number_to_currency(movimiento.saldo)
  return  [ movimiento.updated_at.strftime('%d/%m/%Y %T'),
            movimiento.fecha_mov.strftime('%d/%m/%Y'),
            movimiento.transaccion_id, movimiento.trx_desc, cred, deb, sdo ]
end  

p @movimientos.take(10).map { |movimiento| detail_row2(movimiento) }

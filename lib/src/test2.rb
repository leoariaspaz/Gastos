# a = $('.row').not('.panel').map(function(){
#   var result = new Object();
#   result.trx = $(this).find('.transaccion select').val();
#   result.importe = $(this).find('#movimiento_items__importe').val();
#   return result;
# }).get();
# $.get('/movimientos/carga_masiva/sumar', {items: a}, function(data) {}, 'json');


p = {"0"=>{"trx"=>"262", "importe"=>"100"}, 
		 "1"=>{"trx"=>"304", "importe"=>"200"}, 
		 "2"=>{"trx"=>"257", "importe"=>"400"}, 
		 "3"=>{"trx"=>"212", "importe"=>"50"}, 
		 "4"=>{"trx"=>"262", "importe"=>"75"}, 
		 "5"=>{"trx"=>"212", "importe"=>"125"}}


tmp = []
p.each { |k,v| tmp << v }
total = tmp.inject(0){|sum,x| sum + x["importe"].to_f }

puts "p =========="
puts p

puts "tmp ========="
puts tmp

puts "total => #{total}"
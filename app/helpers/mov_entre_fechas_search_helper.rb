module MovEntreFechasSearchHelper
	# def str_to_date(fecha, separador = "/")
	# 	fecha_array = Array.new(3).zip(fecha.split(separador)).transpose.last.reverse.map(&:to_i)
	# 	return Date.new(fecha_array[0], fecha_array[1], fecha_array[2])
	# end	

	def str_to_date(fecha, formato = "%d/%m/%Y")		
		begin
			Date.strptime(fecha, formato)			
		rescue Exception => e			
		end
	end
end

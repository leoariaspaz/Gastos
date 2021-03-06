# basado en http://railscasts.com/episodes/219-active-model?view=asciicast
class MovEntreFechasSearch
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

	def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end
  
  def persisted?
    false
  end  

	TIPOS_INFORME = [["Ordenado por fecha", 1], ["Agrupado por usuario", 2]]

	attr_accessor :fecha_desde, :fecha_hasta, :cuenta_id, :tipo_informe, :mostrar_contrasientos	

	validates :fecha_desde, :fecha_hasta, :cuenta_id, :tipo_informe, presence: true
	validates :fecha_desde, :fecha_hasta, date_format: true

	validates :tipo_informe, inclusion: { in: lambda {|tipo| TIPOS_INFORME.map{|ti| ti[1].to_s }},
							message: "no es un informe válido" }

	# def initialize(params = nil)
	# 	if params.nil?
	# 		@fecha_desde = Configuracion.current.fecha_proceso
	# 		@fecha_hasta = Configuracion.current.fecha_proceso
	# 		@tipo_informe = 1
	# 	else
	#     # @fecha_desde = date_from_select_params(params, "fecha_desde")
	#     # @fecha_hasta = date_from_select_params(params, "fecha_hasta")
	#     @fecha_desde = new_date params[:fecha_desde]
	#     @fecha_hasta = new_date params[:fecha_hasta]
	#     @tipo_informe = params[:tipo_informe].to_i
	# 		@cuenta_id = params[:cuenta_id].to_i
	# 	end
	# end

private
	def date_from_select_params(params, field_name)
		Date.new(params["#{field_name}(1i)"].to_i, params["#{field_name}(2i)"].to_i, params["#{field_name}(3i)"].to_i)
	end

	def new_date(fecha, separador = "/")
		fecha_array = Array.new(3).zip(fecha.split(separador)).transpose.last.reverse.map(&:to_i)
		return Date.new(fecha_array[0], fecha_array[1], fecha_array[2])
	end	
end

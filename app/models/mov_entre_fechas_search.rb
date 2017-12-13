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

	attr_accessor :fecha_desde, :fecha_hasta, :cuenta_id, :tipo_informe	

	validates :fecha_desde, :fecha_hasta, :cuenta_id, :tipo_informe, presence: true
	validates :fecha_desde, :fecha_hasta, date_format: true

	validates :tipo_informe, inclusion: { in: lambda {|tipo| TIPOS_INFORME.map{|ti| ti[1].to_s }},
							message: "no es un informe válido" }

	def initialize2(params = nil)
		if params.nil?
			@fecha_desde = Configuracion.current.fecha_proceso
			@fecha_hasta = Configuracion.current.fecha_proceso
			@tipo_informe = 1
		else
	    @fecha_desde = date_from_select_params(params, "fecha_desde")
	    @fecha_hasta = date_from_select_params(params, "fecha_hasta")
	    @tipo_informe = params[:tipo_informe].to_i
			@cuenta_id = params[:cuenta_id].to_i
		end
	end

	def self.tipos_informe
		TipoInforme.map{|k,v| [v, k]}
	end

	def to_s
		"(tipo_informe: #{@tipo_informe}, fecha_desde: #{@fecha_desde}, fecha_hasta: #{@fecha_hasta}, " +
		"nromovil_desde: #{@nromovil_desde}, nromovil_hasta: #{@nromovil_hasta})"
	end

private
	def date_from_select_params(params, field_name)
		Date.new(params["#{field_name}(1i)"].to_i, params["#{field_name}(2i)"].to_i, params["#{field_name}(3i)"].to_i)
	end
end

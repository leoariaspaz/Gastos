# basado en https://stackoverflow.com/a/14507069/32173
class DateFormatValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, parameters)
  	puts "parameters = #{parameters}"
  	separador = (parameters.is_a?(Hash))? parameters[:separator] || "/" : "/"
  	fecha = Array.new(3).zip(parameters.split(separador)).transpose.last.reverse.map(&:to_i)
		if not Date.valid_date? *fecha
    	record.errors.add attribute, I18n.t('errors.messages.format')
		end		
  end
end

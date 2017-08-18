class Transaccion < ApplicationRecord
  validates :descripcion, presence: true, uniqueness: true
  belongs_to :tipo_transaccion
  validate :tipo_transaccion_válido


private
	def tipo_transaccion_válido
		if (not tipo_transaccion_id.nil?) and TipoTransaccion.where(habilitado: true, id: tipo_transaccion_id).empty?
 			errors.add(:tipo_transaccion_id, "es incorrecto")
		end
	end 
end

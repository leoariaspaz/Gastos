class Transaccion < ApplicationRecord
  has_many :transacciones

  validates :descripcion, presence: true
  validates_uniqueness_of :descripcion, scope: :tipo_transaccion_id
  belongs_to :tipo_transaccion
  validate :tipo_transaccion_válido

  def descripcion_completa
  	"#{tipo_transaccion.descripcion} - #{descripcion}"
  end

  def self.all_for_select(id)
    if id
      self.where(tipo_transaccion_id: id).order(:descripcion).map { |t| [t.descripcion, t.id] }
    else
      self.order(:descripcion).map { |t| [t.descripcion, t.id] }
    end
  end


private
	def tipo_transaccion_válido
		if (not tipo_transaccion_id.nil?) and TipoTransaccion.where(habilitado: true, id: tipo_transaccion_id).empty?
 			errors.add(:tipo_transaccion_id, "es incorrecto")
		end
	end 
end

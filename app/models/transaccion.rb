class Transaccion < ApplicationRecord
  belongs_to :empresa
  belongs_to :tipo_transaccion

  validates :descripcion, presence: true
  validates_uniqueness_of :descripcion, scope: :tipo_transaccion_id
  validate :tipo_transaccion_válido

  #def self.default_scope
  #  if current_user
  #    self.where(empresa_id: current_user.empresa_id)
  #  end
  #end

  def descripcion_completa
  	"#{tipo_transaccion.descripcion} - #{descripcion}"
  end

  def self.all_for_select(id = nil)
    if id
      self.select(:id, :descripcion).where(tipo_transaccion_id: id).order(:descripcion).map { |t| [t.descripcion, t.id] }
    else
      self.select(:id, :descripcion).order(:descripcion).map { |t| [t.descripcion, t.id] }
    end
  end

private
	def tipo_transaccion_válido
		if (not tipo_transaccion_id.nil?) and (not Usuario.current_user.tipos_transacciones(id: tipo_transaccion_id))
 			errors.add(:tipo_transaccion_id, "es incorrecto")
		end
	end
end

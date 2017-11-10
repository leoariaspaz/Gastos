class TipoTransaccion < ApplicationRecord
	belongs_to :empresa

	validates_uniqueness_of :descripcion, :message => "ya existe"
	validates :descripcion, presence: true

	def self.all_for_select(usuario)
		values = select(:descripcion, :id).where(habilitado: true, empresa_id: usuario.empresa_id)
		if usuario
				values = values.order(:descripcion)
		end
		return values.map { |t| [t.descripcion, t.id] }
	end
end

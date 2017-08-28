class TipoTransaccion < ApplicationRecord
	validates_uniqueness_of :descripcion, :message => "ya existe"
	validates :descripcion, presence: true

	def self.all_for_select
		where(habilitado: true).map { |t| [t.descripcion, t.id] }
	end
end

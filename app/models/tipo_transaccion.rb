class TipoTransaccion < ApplicationRecord
	belongs_to :empresa

	validates_uniqueness_of :descripcion, :message => "ya existe"
	validates :descripcion, presence: true

	def self.all_for_select
		select(:descripcion, :id).where(habilitado: true).order(:descripcion).map { |t| [t.descripcion, t.id] }
	end
end

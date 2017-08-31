class Cuenta < ApplicationRecord
	validates :descripcion, presence: true
	validates_numericality_of :saldo_inicial, greather_than_or_equal_to: 0

	def self.all_for_select
		select(:descripcion, :id).where(habilitado: true).order(:descripcion).map { |t| [t.descripcion, t.id] }
	end
end

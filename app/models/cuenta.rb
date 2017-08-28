class Cuenta < ApplicationRecord
	validates :descripcion, presence: true
	validates_numericality_of :saldo_inicial, greather_than_or_equal_to: 0

	def self.all_for_select
		where(habilitado: true).map { |t| [t.descripcion, t.id] }
	end
end

class TipoTransaccion < ApplicationRecord
	validates_uniqueness_of :descripcion, :message => "ya existe"
	validates :descripcion, presence: true
end

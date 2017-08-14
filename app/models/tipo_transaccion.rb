class TipoTransaccion < ApplicationRecord
	validates :descripcion, :uniqueness: true
end

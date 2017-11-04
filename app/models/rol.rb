class Rol < ApplicationRecord
	has_and_belongs_to_many :usuarios
	has_and_belongs_to_many :permisos
end

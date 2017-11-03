class Empresa < ApplicationRecord
	has_many :usuarios, :class_name => "usuario"
end

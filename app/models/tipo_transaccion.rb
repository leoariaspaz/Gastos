class TipoTransaccion < ApplicationRecord
	belongs_to :empresa
  has_many :transacciones

	validates_uniqueness_of :descripcion, :message => "ya existe", scope: :empresa_id
	validates :descripcion, presence: true

	before_destroy :tipo_transaccion_con_transacciones?

	def self.all_for_select(usuario)
		values = select(:descripcion, :id).where(habilitado: true, empresa_id: usuario.empresa_id)
		if usuario
				values = values.order(:descripcion)
		end
		return values.map { |t| [t.descripcion, t.id] }
	end

private
	def tipo_transaccion_con_transacciones?
    errors.add(:base, "No se puede eliminar un tipo de transacción con transacciones relacionadas.") if transacciones.any?
    throw(:abort) if errors.any?
	end
end

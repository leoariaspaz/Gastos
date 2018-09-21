class Cuenta < ApplicationRecord
	has_many :movimientos
	belongs_to :empresa

	validates :descripcion, presence: true
	validates_numericality_of :saldo_inicial, greather_than_or_equal_to: 0

  before_destroy :cuenta_con_movimientos?

	def self.all_for_select
		select(:descripcion, :id).where(habilitado: true).order(:descripcion).map { |t| [t.descripcion, t.id] }
	end

	def self.obtener_saldos(usuario)
    query = <<-SQL
      SUM(case when transacciones.es_debito = 't' then -movimientos.importe
               else movimientos.importe end) AS importe,
      MAX(movimientos.fecha_mov) AS max_fecha_mov,
      cuentas.descripcion AS descripcion_cuenta,
      cuentas.saldo_inicial
    SQL
    saldos_cuentas = usuario.cuentas.joins(movimientos: [:transaccion]).select(query)
                 .group("cuentas.descripcion, cuentas.saldo_inicial")
    return saldos_cuentas
	end

private
  def cuenta_con_movimientos?
    errors.add(:base, "No se puede eliminar una cuenta con movimientos.") if movimientos.any?
    logger.debug "cuenta_con_movimientos -> movimientos relacionados: #{movimientos.count} - errores:  #{errors.count}"
    throw(:abort) if errors.any?
  end
end

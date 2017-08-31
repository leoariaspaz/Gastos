class Movimiento < ApplicationRecord
  belongs_to :transaccion

  def tipo_transaccion_id
  	(transaccion.nil?)? nil : transaccion.tipo_transaccion_id
  end
end

class Movimiento < ApplicationRecord
  belongs_to :transaccion
  belongs_to :cuenta

  def tipo_transaccion_id
  	(transaccion.nil?)? 0 : transaccion.tipo_transaccion_id
  end
end

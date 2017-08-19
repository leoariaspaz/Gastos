json.extract! movimiento, :id, :fecha_mov, :transaccion_id, :importe, :created_at, :updated_at
json.url movimiento_url(movimiento, format: :json)

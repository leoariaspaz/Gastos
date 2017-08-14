json.extract! tipo_transaccion, :id, :descripcion, :habilitado, :created_at, :updated_at
json.url tipo_transaccion_url(tipo_transaccion, format: :json)

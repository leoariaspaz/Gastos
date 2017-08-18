json.extract! transaccion, :id, :descripcion, :habilitado, :es_debito, :tipo_transaccion_id, :created_at, :updated_at
json.url transaccion_url(transaccion, format: :json)

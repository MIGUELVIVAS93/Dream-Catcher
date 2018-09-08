json.extract! giro, :id, :numTarjeta, :fecha, :valor, :pasarela, :datos, :references, :created_at, :updated_at
json.url giro_url(giro, format: :json)

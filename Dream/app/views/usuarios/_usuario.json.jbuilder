json.extract! usuario, :id, :usuario, :password, :rol, :references, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)

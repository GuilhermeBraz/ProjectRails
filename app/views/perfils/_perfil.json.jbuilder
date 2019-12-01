json.extract! perfil, :id, :idade, :altura, :sexo, :peso, :objetivo, :atividade, :user_id, :created_at, :updated_at
json.url perfil_url(perfil, format: :json)

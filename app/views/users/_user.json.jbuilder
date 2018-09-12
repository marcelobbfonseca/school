json.extract! user, :id, :role, :name, :discipline, :created_at, :updated_at
json.url user_url(user, format: :json)

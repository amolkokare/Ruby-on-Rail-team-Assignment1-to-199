json.extract! user, :id, :userfirst_name, :last_name, :address, :phone, :created_at, :updated_at
json.url user_url(user, format: :json)

json.extract! food, :id, :food_name, :calories, :created_at, :updated_at
json.url food_url(food, format: :json)

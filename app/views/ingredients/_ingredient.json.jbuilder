json.extract! ingredient, :id, :amount, :unit, :name, :created_at, :updated_at
json.url ingredient_url(ingredient, format: :json)

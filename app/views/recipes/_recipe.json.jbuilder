json.extract! recipe, :id, :name, :user_id, :level_id, :active_time, :inactive_time, :vegetarian, :vegan, :lactose_free, :gluten_free, :description, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)

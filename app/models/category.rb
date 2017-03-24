class Category < ActiveRecord::Base
  has_many :recipes

  def number_of_recipes
    (Recipe.where category_id:id).size
  end
end

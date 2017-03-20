class Recipe < ActiveRecord::Base
  belongs_to :user
  belongs_to :level

  has_many :recipe_categories, dependent: :destroy
  has_many :ratings, dependent: :destroy

end

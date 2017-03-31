class Recipe < ActiveRecord::Base
  belongs_to :user
  belongs_to :level

  has_many :category
  has_many :ingredients, inverse_of: :recipe
  accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: true

  has_many :ratings, dependent: :destroy

end

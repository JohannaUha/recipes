class Recipe < ActiveRecord::Base
  belongs_to :user
  belongs_to :level

  has_many :category
  has_many :ratings, dependent: :destroy


end

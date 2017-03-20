class User < ActiveRecord::Base
  has_many :recipes
  has_many :ratings

  validates :username, uniqueness: :true
end

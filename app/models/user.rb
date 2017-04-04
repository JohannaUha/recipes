class User < ActiveRecord::Base
  has_many :recipes
  has_many :ratings

  validates :username, uniqueness: :true,
                       length: { minimum: 3 }

  has_secure_password

end

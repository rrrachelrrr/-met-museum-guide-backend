class User < ApplicationRecord
  has_secure_password
  has_many :fav_arts
  validates_uniqueness_of :username

end

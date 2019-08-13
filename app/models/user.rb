class User < ApplicationRecord
  has_secure_password
  has_many :fav_arts
  has_many :comments
  validates_uniqueness_of :username

end

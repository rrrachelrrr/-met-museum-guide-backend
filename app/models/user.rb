class User < ApplicationRecord
  has_secure_password
  has_many :fav_arts
  has_many :user_tags
  has_many :tags, through: :user_tag
  validates_uniqueness_of :username

end

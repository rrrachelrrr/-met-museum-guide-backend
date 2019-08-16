class Tag < ApplicationRecord
  belongs_to :fav_art
  has_many :user_tags
end

class Art < ApplicationRecord
  has_many :fav_arts
  has_many :users, through: :fav_arts
end

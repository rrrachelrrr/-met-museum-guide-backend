class FavArt < ApplicationRecord
  belongs_to :user
  belongs_to :art
  has_many :comments
end

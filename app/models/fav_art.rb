class FavArt < ApplicationRecord
  belongs_to :user
  has_many :tags
  has_many :user_tags, through: :tags


end

class FavArt < ApplicationRecord
  belongs_to :user
  has_many :fav_art_tags
  has_many :tags, through: :fav_art_tags

end

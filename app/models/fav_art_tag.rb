class FavArtTag < ApplicationRecord
  belongs_to :tag
  belongs_to :fav_art
end

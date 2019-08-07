class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :fav_art
end

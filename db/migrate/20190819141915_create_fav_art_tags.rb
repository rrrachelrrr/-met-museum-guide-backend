class CreateFavArtTags < ActiveRecord::Migration[5.2]
  def change
    create_table :fav_art_tags do |t|
      t.references :tag, foreign_key: true
      t.references :fav_art, foreign_key: true

      t.timestamps
    end
  end
end

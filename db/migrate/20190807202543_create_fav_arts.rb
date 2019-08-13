class CreateFavArts < ActiveRecord::Migration[5.2]
  def change
    create_table :fav_arts do |t|
      t.references :user, foreign_key: true
      t.string :keyword
      t.boolean :is_highlight, default: false
      t.string :img_url
      t.string :title
      t.string :artist
      t.string :date
      t.string :collection
      t.integer :api_id

      t.timestamps
    end
  end
end

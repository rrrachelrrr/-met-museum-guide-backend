class CreateFavArts < ActiveRecord::Migration[5.2]
  def change
    create_table :fav_arts do |t|
      t.references :user, foreign_key: true
      t.references :art, foreign_key: true
      t.string :keyword
      t.boolean :is_highlight, default: false

      t.timestamps
    end
  end
end

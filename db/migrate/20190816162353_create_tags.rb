class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.references :fav_art, foreign_key: true
      t.string :tag_name

      t.timestamps
    end
  end
end

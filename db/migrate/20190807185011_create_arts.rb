class CreateArts < ActiveRecord::Migration[5.2]
  def change
    create_table :arts do |t|
      t.integer :api_id
      t.string :img_url
      t.string :title
      t.string :artist
      t.string :date
      t.boolean :is_highlight, default: false

      t.timestamps
    end
  end
end

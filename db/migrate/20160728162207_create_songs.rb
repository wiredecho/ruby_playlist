class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.integer :added
      t.references :songlist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

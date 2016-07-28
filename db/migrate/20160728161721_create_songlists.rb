class CreateSonglists < ActiveRecord::Migration
  def change
    create_table :songlists do |t|
      t.references :user

      t.timestamps null: false
    end
  end
end

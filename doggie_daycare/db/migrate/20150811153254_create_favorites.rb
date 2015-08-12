class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :dob
      t.string :favorite_drink
      t.string :favorite_sport

      t.timestamps null: false
    end
  end
end

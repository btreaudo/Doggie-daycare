class CreateJazzs < ActiveRecord::Migration
  def change
    create_table :jazzs do |t|
      t.text :content
      t.string :title

      t.timestamps null: false
    end
  end
end

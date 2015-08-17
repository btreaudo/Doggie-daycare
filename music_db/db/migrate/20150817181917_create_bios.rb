class CreateBios < ActiveRecord::Migration
  def change
    create_table :bios do |t|
      t.string :bio

      t.timestamps null: false
    end
  end
end

class AddOwnerToDog < ActiveRecord::Migration
  def change
    add_column :dogs, :owner_name, :age
  end
end

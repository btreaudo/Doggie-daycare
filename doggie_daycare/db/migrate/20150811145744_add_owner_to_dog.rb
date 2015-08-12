class AddOwnerToDog < ActiveRecord::Migration
  def change
    add_column :dogs, :ownername, :age
  end
end

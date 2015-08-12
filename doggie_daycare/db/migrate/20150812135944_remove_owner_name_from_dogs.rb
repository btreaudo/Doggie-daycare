class RemoveOwnerNameFromDogs < ActiveRecord::Migration
  def change
    remove_column :dogs, :ownername, :string
  end
end

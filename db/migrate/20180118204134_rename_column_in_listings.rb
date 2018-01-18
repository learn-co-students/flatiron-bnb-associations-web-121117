class RenameColumnInListings < ActiveRecord::Migration
  def change
    rename_column :listings, :location, :address
    change_column :listings, :price, :float
  end
end

class AddDescriptionPriceToListings < ActiveRecord::Migration
  def change
    add_column :listings, :description, :string
    add_column :listings, :price, :float
  end
end

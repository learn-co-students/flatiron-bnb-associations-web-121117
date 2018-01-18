class AddColumnsToListings < ActiveRecord::Migration
  def change
    add_column :listings, :address, :string
    add_column :listings, :listing_type, :string
    add_column :listings, :title, :string
  end
end

class AddColumnsToListings < ActiveRecord::Migration
  def change
    add_column :listings, :listing_type, :string
    add_column :listings, :title, :string
    add_column :listings, :description, :string
    add_column :listings, :neighborhood_id, :integer
  end
end

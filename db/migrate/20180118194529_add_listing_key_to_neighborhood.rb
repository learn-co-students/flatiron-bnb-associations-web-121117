class AddListingKeyToNeighborhood < ActiveRecord::Migration
  def change
    add_reference :neighborhoods, :listing, index: true, foreign_key: true
  end
end

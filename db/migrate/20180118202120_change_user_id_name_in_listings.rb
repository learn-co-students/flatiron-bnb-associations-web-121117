class ChangeUserIdNameInListings < ActiveRecord::Migration
  def change
    rename_column :listings, :user_id, :guest_id
  end
end

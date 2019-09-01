class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.string :address
      t.string :listing_type
      t.text :description
      t.float :price


      t.belongs_to :city
      t.belongs_to :neighborhood

      t.belongs_to :host, :class_name => "User"
      t.timestamps null: false
    end
  end
end

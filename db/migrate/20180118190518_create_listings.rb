class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.string :description
      t.string :address
      t.string :listing_type
      t.integer :price
      t.integer :host_id
      t.belongs_to :neighborhood, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

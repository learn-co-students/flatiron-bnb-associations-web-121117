class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.text :description
      t.string :address
      t.string :listing_type
      t.float :price
      t.belongs_to :neighborhood, index: true, foreign_key: true
      t.references :host, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end

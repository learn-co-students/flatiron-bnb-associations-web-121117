class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :description
      t.integer :rating


      t.belongs_to :guest, :class_name => "User"
      t.belongs_to :reservation

      t.belongs_to :city, index: true, foreign_key: true
      t.belongs_to :neighborhood, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

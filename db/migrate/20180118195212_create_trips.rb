class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :name
      t.belongs_to :guest, class_name: "User"

      t.timestamps null: false
    end
  end
end

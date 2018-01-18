class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.references :listing, index: true, foreign_key: true
      t.references :city, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

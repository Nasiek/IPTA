class CreateShipTripJoins < ActiveRecord::Migration[5.2]
  def change
    create_table :ship_trip_joins do |t|
      t.integer :ship_id
      t.integer :trip_id

      t.timestamps
    end
  end
end

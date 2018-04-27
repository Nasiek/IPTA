class CreateShipTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :ship_trips do |t|
      t.integer :ship_id
      t.integer :trip_id
      t.timestamps

    end
  end
end

class CreateShips < ActiveRecord::Migration[5.2]
  def change
    create_table :ships do |t|
      t.string :veh_name
      t.string :veh_location
      t.integer :seats
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

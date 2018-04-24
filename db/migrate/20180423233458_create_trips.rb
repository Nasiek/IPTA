class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :description
      t.string :origin
      t.string :destination
      t.integer :distance
      t.integer :seats
      t.integer :cost
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

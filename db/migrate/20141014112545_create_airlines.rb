class CreateAirlines < ActiveRecord::Migration
  def change
    create_table :airlines do |t|
      t.string :cities
      t.string :planes
      t.string :routes
      t.string :passengers

      t.timestamps
    end
  end
end

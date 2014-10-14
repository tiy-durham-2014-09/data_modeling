class CreateAirports < ActiveRecord::Migration
  def change
    create_table :airports do |t|
      t.string :terminals
      t.string :planes
      t.string :airlines

      t.timestamps
    end
  end
end

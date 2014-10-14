class CreatePlacesToBuys < ActiveRecord::Migration
  def change
    create_table :places_to_buys do |t|
      t.string :online
      t.string :mall
      t.string :make

      t.timestamps
    end
  end
end

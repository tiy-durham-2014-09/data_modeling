class CreatePlacesToGives < ActiveRecord::Migration
  def change
    create_table :places_to_gives do |t|
      t.string :workplace
      t.string :home
      t.string :party

      t.timestamps
    end
  end
end

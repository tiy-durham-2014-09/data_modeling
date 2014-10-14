class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :gender
      t.string :location
      t.string :destination
      t.date :date_of_birth
      



      t.timestamps
    end
  end
end

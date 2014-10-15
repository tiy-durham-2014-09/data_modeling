class CreateCrewMembers < ActiveRecord::Migration
  def change
    create_table :crew_members do |t|
      t.string :name, index: true
      t.string :role, index: true, default: "Spaceperson"
      t.string :species, index: true
      t.string :gender, index: true
      t.references :ship, index: true
      t.references :captain

      t.timestamps
    end
  end
end

class CreateManagers < ActiveRecord::Migration
  def change
    create_table :managers do |t|
      t.string :name
      t.integer :badge_number

      t.timestamps
    end
  end
end

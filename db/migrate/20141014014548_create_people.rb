class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.date :birthday
      t.text :wishlist

      t.timestamps
    end
  end
end

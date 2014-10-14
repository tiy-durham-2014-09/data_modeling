class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name, index: true, null: false
      t.integer :birth_year
      t.string :gender, null: false

      t.timestamps
    end
  end
end

class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :player, index: true
      t.references :casino, index: true
      t.string :name

      t.timestamps
    end
  end
end

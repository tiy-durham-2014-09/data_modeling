class CreatePairings < ActiveRecord::Migration
  def change
    create_table :pairings do |t|
      t.references :beer_style, index: true
      t.references :cheese_style, index: true

      t.timestamps
    end
  end
end

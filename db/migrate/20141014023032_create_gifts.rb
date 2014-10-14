class CreateGifts < ActiveRecord::Migration
  def change
    create_table :gifts do |t|
      t.string :item
      t.integer :price
      t.string :stage
      t.string :description

      t.timestamps
    end
  end
end

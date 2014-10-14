class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :rating
      t.references :rateable, polymoprhic: true

      t.timestamps
    end
  end
end

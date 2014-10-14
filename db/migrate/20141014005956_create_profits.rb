class CreateProfits < ActiveRecord::Migration
  def change
    create_table :profits do |t|
      t.integer :money
      t.references :winning, polymorphic: true, index: true

      t.timestamps
    end
  end
end

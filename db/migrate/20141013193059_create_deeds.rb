class CreateDeeds < ActiveRecord::Migration
  def change
    create_table :deeds do |t|
      t.references :player, index: true
      t.references :property, index: true
      t.integer :houses

      t.timestamps
    end
  end
end

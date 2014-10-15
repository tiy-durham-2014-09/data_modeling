class CreateSpaceBarnacles < ActiveRecord::Migration
  def change
    create_table :space_barnacles do |t|
      t.integer :count, index: true
      t.references :barnable, polymorphic: true, index: true

      t.timestamps
    end
  end
end

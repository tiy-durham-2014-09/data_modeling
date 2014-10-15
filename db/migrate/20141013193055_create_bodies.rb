class CreateBodies < ActiveRecord::Migration
  def change
    create_table :bodies do |t|
      t.string :name, index: true
      t.string :type, index: true
      t.string :size, index: true
      t.string :features, index: true
      t.references :region, index: true
      t.references :captain, index: true
      t.references :parent_body

      t.timestamps
    end
  end
end

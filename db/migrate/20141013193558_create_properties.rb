class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :name
      t.integer :base_rent
      t.string :color_group

      t.timestamps
    end
  end
end

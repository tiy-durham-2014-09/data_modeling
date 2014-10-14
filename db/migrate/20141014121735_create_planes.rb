class CreatePlanes < ActiveRecord::Migration
  def change
    create_table :planes do |t|
      t.string :manufacturer
      t.integer :model_id
      t.integer :seats

      t.timestamps
    end
  end
end

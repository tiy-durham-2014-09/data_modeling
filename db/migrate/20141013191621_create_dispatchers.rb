class CreateDispatchers < ActiveRecord::Migration
  def change
    create_table :dispatchers do |t|
      t.string :name
      t.references :manager


      t.timestamps
    end
  end
end

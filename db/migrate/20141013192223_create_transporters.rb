class CreateTransporters < ActiveRecord::Migration
  def change
    create_table :transporters do |t|
      t.string :name
      t.references :dispatcher, index: true
      t.references :patient, index: true


      t.timestamps
    end
  end
end

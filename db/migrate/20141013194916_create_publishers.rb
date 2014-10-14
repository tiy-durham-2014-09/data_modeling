class CreatePublishers < ActiveRecord::Migration
  def change
    create_table :publishers do |t|
      t.string :name, null: false
      t.string :address

      t.timestamps
    end
  end
end

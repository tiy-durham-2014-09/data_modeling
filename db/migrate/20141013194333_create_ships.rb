class CreateShips < ActiveRecord::Migration
  def change
    create_table :ships do |t|
      t.string :name, index: true
      t.references :body, index: true
      t.references :captain, index: true

      t.timestamps
    end
  end
end

class CreateCasinos < ActiveRecord::Migration
  def change
    create_table :casinos do |t|
      t.string :name, index: true

      t.timestamps
    end
  end
end

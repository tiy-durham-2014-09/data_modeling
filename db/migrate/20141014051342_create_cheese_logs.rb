class CreateCheeseLogs < ActiveRecord::Migration
  def change
    create_table :cheese_logs do |t|
      t.references :cheese_style, index: true
      t.string :cheesemaker
      t.string :title

      t.timestamps
    end
  end
end

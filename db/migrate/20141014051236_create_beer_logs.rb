class CreateBeerLogs < ActiveRecord::Migration
  def change
    create_table :beer_logs do |t|
      t.references :beer_style, index: true
      t.string :brewer
      t.string :title

      t.timestamps
    end
  end
end

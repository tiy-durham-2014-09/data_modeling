class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.string :title
      t.string :genre

      t.timestamps
    end
  end
end

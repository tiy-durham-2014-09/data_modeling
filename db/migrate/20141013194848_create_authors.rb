class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name, null: false
      t.date :deceased_date, null: true

      t.timestamps
    end
  end
end

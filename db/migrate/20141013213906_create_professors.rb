class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.string :name
      t.string :department
      t.boolean :goodreputation

      t.timestamps
    end
  end
end

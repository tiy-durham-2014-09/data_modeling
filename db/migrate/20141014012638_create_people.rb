class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :relatives
      t.string :friends
      t.string :serviceworkers

      t.timestamps
    end
  end
end

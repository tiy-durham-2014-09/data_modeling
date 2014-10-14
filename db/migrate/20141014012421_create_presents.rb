class CreatePresents < ActiveRecord::Migration
  def change
    create_table :presents do |t|
      t.string :agegroup
      t.string :gender
      t.string :cost

      t.timestamps
    end
  end
end

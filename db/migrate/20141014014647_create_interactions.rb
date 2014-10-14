class CreateInteractions < ActiveRecord::Migration
  def change
    create_table :interactions do |t|
      t.integer :giver_id
      t.integer :receiver_id

      t.timestamps
    end
  end
end

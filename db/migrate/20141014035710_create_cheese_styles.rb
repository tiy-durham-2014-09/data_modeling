class CreateCheeseStyles < ActiveRecord::Migration
  def change
    create_table :cheese_styles do |t|
      t.string :title

      t.timestamps
    end
  end
end

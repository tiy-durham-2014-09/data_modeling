class AddRatingToCheeseLog < ActiveRecord::Migration
  def change
    add_column :cheese_logs, :rating, :integer
  end
end

class AddRatingToBeerLog < ActiveRecord::Migration
  def change
    add_column :beer_logs, :rating, :integer
  end
end

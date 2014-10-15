class RemoveBodyIdFromShips < ActiveRecord::Migration
  def change
    remove_column :ships, :body_id, :integer
  end
end

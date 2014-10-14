class AddFieldsToTables < ActiveRecord::Migration
  def change
    add_column :properties, :player_id, :integer
  end
end

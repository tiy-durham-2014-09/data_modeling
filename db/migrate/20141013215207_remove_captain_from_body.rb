class RemoveCaptainFromBody < ActiveRecord::Migration
  def change
    remove_column :bodies, :captain_id, :integer
  end
end

class RemoveClassFromBody < ActiveRecord::Migration
  def change
    remove_column :bodies, :type, :string
  end
end

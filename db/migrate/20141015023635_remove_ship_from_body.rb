class RemoveShipFromBody < ActiveRecord::Migration
  def change
    remove_reference :bodies, :ship
  end
end

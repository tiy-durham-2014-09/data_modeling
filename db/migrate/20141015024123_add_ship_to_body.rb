class AddShipToBody < ActiveRecord::Migration
  def change
    add_reference :bodies, :ship, index: true
  end
end

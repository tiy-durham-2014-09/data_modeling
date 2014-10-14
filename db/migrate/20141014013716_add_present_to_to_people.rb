class AddPresentToToPeople < ActiveRecord::Migration
  def change
    add_reference :people, :presentto, index: true
  end
end

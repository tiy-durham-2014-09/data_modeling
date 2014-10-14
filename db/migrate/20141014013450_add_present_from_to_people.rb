class AddPresentFromToPeople < ActiveRecord::Migration
  def change
    add_reference :people, :presentfrom, index: true
  end
end

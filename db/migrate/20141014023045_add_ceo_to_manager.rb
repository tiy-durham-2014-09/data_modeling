class AddCeoToManager < ActiveRecord::Migration
  def change
    add_reference :managers, :ceo, index: true
  end
end

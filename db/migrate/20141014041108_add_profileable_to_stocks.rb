class AddProfileableToStocks < ActiveRecord::Migration
  def change
    add_reference :stocks, :profileable, polymorphic: true, index: true
  end
end

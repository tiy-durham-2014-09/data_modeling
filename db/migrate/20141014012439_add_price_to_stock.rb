class AddPriceToStock < ActiveRecord::Migration
  def change
    add_column :stocks, :price, :integer
  end
end

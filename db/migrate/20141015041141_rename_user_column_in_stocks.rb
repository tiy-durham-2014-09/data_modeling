class RenameUserColumnInStocks < ActiveRecord::Migration
  def change
    rename_column :stocks, :user_id, :portfolio_id
  end
end

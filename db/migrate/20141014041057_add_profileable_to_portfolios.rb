class AddProfileableToPortfolios < ActiveRecord::Migration
  def change
    add_reference :portfolios, :profileable, polymorphic: true, index: true
  end
end

class ChangeAirlinesCitiesToCity < ActiveRecord::Migration
  def change
    rename_column :airlines, :cities, :city
  end
end

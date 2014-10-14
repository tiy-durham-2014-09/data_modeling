class AddIndicesToCasinosAndPlayers < ActiveRecord::Migration
  def change
    add_index :casinos, :name
    add_index :players, :name
  end
end

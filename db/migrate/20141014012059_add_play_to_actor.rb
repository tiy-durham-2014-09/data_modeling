class AddPlayToActor < ActiveRecord::Migration
  def change
    add_reference :actors, :play, index: true
  end
end

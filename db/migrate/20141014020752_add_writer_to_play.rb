class AddWriterToPlay < ActiveRecord::Migration
  def change
    add_reference :plays, :writer, index: true
  end
end

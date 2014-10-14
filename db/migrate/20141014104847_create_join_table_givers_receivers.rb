class CreateJoinTableGiversReceivers < ActiveRecord::Migration
  def change
    create_join_table :givers, :receivers do |t|
      # t.index [:giver_id, :receiver_id]
      # t.index [:receiver_id, :giver_id]
    end
  end
end

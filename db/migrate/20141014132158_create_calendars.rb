class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.date :day

      t.timestamps
    end
  end
end

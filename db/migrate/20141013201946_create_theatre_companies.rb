class CreateTheatreCompanies < ActiveRecord::Migration
  def change
    create_table :theatre_companies do |t|
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end

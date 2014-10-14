class AddTheatreCompanyToActor < ActiveRecord::Migration
  def change
    add_reference :actors, :theatre_company, index: true
  end
end

class AddTheatreCompanyToPlay < ActiveRecord::Migration
  def change
    add_reference :plays, :theatre_company, index: true
  end
end

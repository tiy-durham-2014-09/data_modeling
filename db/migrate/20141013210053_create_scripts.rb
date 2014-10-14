class CreateScripts < ActiveRecord::Migration
  def change
    create_table :scripts do |t|
      t.text :text
      t.references :scriptable, polymorphic: true, index: true
      t.timestamps
    end
  end
end

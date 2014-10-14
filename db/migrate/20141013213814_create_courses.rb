class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.boolean :requiredbymajor
      t.boolean :meetsonfriday
      t.time :time
      t.references :student, index: true
      t.references :professor, index: true

      t.timestamps
    end
  end
end

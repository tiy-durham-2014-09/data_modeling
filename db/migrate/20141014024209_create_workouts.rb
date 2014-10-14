class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.date :day
      t.string :type_of_workout
      t.string :body_workout_location

      t.timestamps
    end
  end
end

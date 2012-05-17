class CreateMovements < ActiveRecord::Migration
  def change
    create_table :movements do |t|
      t.references :workout
      
      t.string :exercise
      t.string :type              # weight/reps, distance, time, cals
      
      t.integer :weight
      t.string :weight_unit       # lbs, kg, pood
      t.integer :reps
      t.integer :distance
      t.string :distance_unit     # m, in, ft, yd, mi, km
      
      t.integer :minutes
      t.integer :seconds
      
      t.integer :cals
      
      t.timestamps
    end
  end
end

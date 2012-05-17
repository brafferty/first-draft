class Movement < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :exercise, :type, 
  attr_accessible :weight, :weight_unit, :distance, :distance_unit, 
  attr_accessible :minutes, :seconds,
  attr_accessible :reps, :cals
  
  belongs_to :workout
end

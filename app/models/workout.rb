class Workout < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :name
  
  has_many :movements
  
  
  def power
    (work / time)
  end
  
  def work
    0 # no work today, my love has gone away.
  end
  
end

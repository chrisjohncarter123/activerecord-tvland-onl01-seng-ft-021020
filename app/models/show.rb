class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  has_one :day
  has_one :genre
  has_one :season
  
  def actors_list
    return self.actors.collect{|a| a.full_name}
    
  end
end
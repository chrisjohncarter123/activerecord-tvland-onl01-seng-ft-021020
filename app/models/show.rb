class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  has_one :genre
  
  def actors_list
    return self.actors.collect{|a| a.full_name}
    
  end
end
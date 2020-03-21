class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters

  
  def actors_list
    return self.actors.collect{|a| a.full_name}
    
  end
  
  def build_network(call_letters:)
    Network.find_by()
    
  end
end
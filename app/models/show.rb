class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        result = []
        actors.each do |c|
            v = c.full_name
            result << v


        end
        return result

    end
  
end
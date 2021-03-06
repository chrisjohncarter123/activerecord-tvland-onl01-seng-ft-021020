class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        return (first_name  + " " + last_name)

    end

    def list_roles

        result = []
        characters.each do |c|
            val = c.name + " - " + c.show.name
            result << val

        end

        return result

    end
  
end
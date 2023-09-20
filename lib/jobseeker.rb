
class Jobseeker

    @@all = []

    def initialize attributes
        attributes.each do |key, value|
            self.class.attr_accessor(key)
            if key == "skills"
                self.send("#{key}=", value.split(", "))
            else 
                self.send("#{key}=", value)
            end
        end 
        @@all << self
    end

    def self.all
        @@all
    end


end
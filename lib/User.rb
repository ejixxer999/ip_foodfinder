
class User
    attr_accessor :lat, :lon, :city, :regionName, :timezone
    @@all = []
    def initialize(regionName, city, timezone)
        @regionName = regionName
        @city = city
        @timezone = timezone
        @@all << self
     end 

     def self.all 
        @@all 
     end 

    
        
end 
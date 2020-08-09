class Restaurant
    attr_accessor :name, :phone, :address, :hours, :range, :type

    @@all = []

    def initialize(attr_hash)
        @name = attr_hash[:name]
        @phone = attr_hash[:phone]
        @address = attr_hash[:address]
        @hours = attr_hash[:hours]
        @type = attr_hash[:type]
        @range = attr_hash[:range]
        @@all << self
        
    end 

    def self.all 
        @@all 
        
    end 


end 
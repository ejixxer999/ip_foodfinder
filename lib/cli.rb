class CLI
   attr_reader :api

   def initialize 
    @api = API.new
   end 

    def start
        api.get_info
    end 

    

end 
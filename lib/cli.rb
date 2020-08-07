class CLI
   attr_reader :api, :restaurant

   def initialize 
    @api = API.new
   end 

    def start
        system("clear")
        @api
        @restaurant = restaurant
        welcome
        @user_input = nil
        main_menu
        
    
    end 

    def welcome
        puts "Welcome to IP_FOODFINDER"
        "\n"
    end 
        
    def main_menu
        info = User.all.first
        time1 = Time.new
        puts ".....Please select an option........"
        puts "     1. View Location"
        puts "     2. View Timezone"
        puts "     3. View restaurant"
        puts "4. Exit"

        until @user_input == "4"
            @user_input = gets.chomp

       if @user_input == "1"
        puts "Your location is #{info.city}, #{info.regionName}"
        
        elsif @user_input == "2"
        puts "Your are currently in the #{info.timezone} timezone :" + time1.inspect
        
        elsif @user_input == "3"


            puts "Invaild selection" unless @user_input == "5"
        end 

    end 
        

    end 

    


    

end 
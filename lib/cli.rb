class CLI
   attr_reader :api, :restaurant, :loading

   def initialize
    @api = API.new
    @loading = Loading.go

   end 

    def start
        system("clear")
        @api
        @restaurant = restaurant
        @loading
        sleep (0.5)
        welcome
        @user_input = nil

        main_menu
        
    
    end 
    
   

    def welcome
        puts "  
        
            )
       __..---..__
   ,-='  /  |  \  `=-.
  :--..___________..--;
   \.,_____________,./" "\n" "\n"
        puts "  Welcome to IP_FOODFINDER"
        "\n"
    end 
        
    def main_menu
        
        info = User.all.first
        time1 = Time.new
        menu
        


        until @user_input == "4"
            @user_input = gets.chomp
            

       if @user_input == "1"
        puts "Your location is #{info.city}, #{info.regionName}"
        
        elsif @user_input == "2"
        puts "Your are currently in the #{info.timezone} timezone :" + time1.inspect
        
        elsif @user_input == "3"
            print_restaurants

            selector

        elsif @user_input == "menu"
            menu
        
        
         else
         puts "Invaild selection" unless @user_input == "4"
        end 
    end 
    
end 
    def menu
        puts ".....Please select an option........"
        puts "     1. View Location"
        puts "     2. View Timezone"
        puts "     3. View restaurant"
        puts Rainbow("..Type 'menu' to return to main menu..")
        puts "4. Exit"
    end     
    
    def print_restaurants
        Restaurant.all.each_with_index {|r, i| puts "#{i + 1}. #{r.name}" }
    end 
    
    def selector 
        puts "..Pick Restaurant for more info..\n"
       choice = nil 
       
       while choice != "menu"
       choice = gets.chomp
       if (1..Restaurant.all.length).include? (choice.to_i)
       res_info(choice.to_i - 1) unless choice == "menu"
       else
        puts "Invalid Selection"
       end
     end

    menu


end  

def res_info(choice)
   jar = Restaurant.all[choice]
   puts jar.name
   puts jar.address
   puts jar.phone
   puts jar.type
   puts jar.range

end 



    
end 

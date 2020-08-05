class CLI
   attr_reader :api


    def start
        system("clear")
        API.new
        welcome
        @user_input = nil
        main_menu
        
    
    end 

    def welcome
        puts "Welcome to IP_FUNFINDER".colorize(:yellow)
        "\n"
    end 
        
    def main_menu
        puts "Please select an option"
        puts "1. View Location"
        puts "2. View Currency"
        puts "3. View Timezone"
        puts "4. View Activities"
        puts "5. Exit".colorize(:red)

        until @user_input == "5"
            @user_input = gets.chomp

       if @user_input == "1"
        puts "Your location"
        show_location
        
       elsif @user_input == "2"
        puts "Current Curency used"
        show_currency
        elsif @user_input == "3"
        puts "Your are currently in the ---- timezone"
        else
            puts "Invaild selection".colorize(:red) unless @user_input == "5"
        end 

    end 
        

    end 

    def show_location
        
    end 

    def show_currency
        
    end 


    

end 
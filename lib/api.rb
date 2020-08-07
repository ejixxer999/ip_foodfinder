require 'net/http'
require 'openssl'
require 'open-uri'
require 'pry'
require 'unirest'
 
        
class API
    
    remote_ip = open('http://whatismyip.akamai.com').read
    BASE_URL = "http://ip-api.com/json/" + remote_ip
    
    
    def get_coor_ip
       
         response = HTTParty.get("#{BASE_URL}" + "?fields=lat,lon,city,regionName,timezone")
         
         user = User.new(response["regionName"], response["city"], response["timezone"]) 
         response
        end 
        
    def get_res_data
        location = get_coor_ip

        response = HTTParty.get("https://us-restaurant-menus.p.rapidapi.com/restaurants/search/geo?page=1&lon=#{location["lon"]}&lat=#{location["lat"]}&distance=1",
        headers:{
            "X-RapidAPI-Host" => "us-restaurant-menus.p.rapidapi.com",
            "X-RapidAPI-Key" => ENV['KRABBY_PATTY']
         },
          parameters:{
             "parameter" => "value"
             })
           
        
    end
end 
API.new.get_coor_ip
API.new.get_res_data
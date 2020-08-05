
require 'open-uri'
require 'pry'
 
        
class API
    def get_info 
         remote_ip = open('http://whatismyip.akamai.com').read
         puts remote_ip
        response = HTTParty.get("http://ip-api.com/json/" + remote_ip)
       
    end 
end 
API.new.get_info
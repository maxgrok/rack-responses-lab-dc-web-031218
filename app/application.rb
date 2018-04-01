require "pry"
class Application 
	def call(env)
    resp = Rack::Response.new
    

    if Time.now.localtime.hour < 12
       	  resp.write "Good Morning!"
    elsif Time.now.localtime.hour >= 12
    	resp.write "Good Afternoon!"
	end
    
    resp.finish
  end

end
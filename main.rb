require 'sinatra'
require 'mandrill'


get '/' do 
	@title = "home"
	erb :home
end
get '/about' do
	@title = "about"
	erb :about
end	
get '/services' do
	@title = "services"
	erb :services
end	

get '/form' do
	@title = "sign_up"
	erb :form 
end

post '/signin' do
	puts params.inspect
	user_name = params["name"]
	user_email = params["email"]
	api_key = ENV['MANDRILL_APIKEY']
	m = Mandrill::API.new
	message = {  
 	:subject=> "your resume_hacker boarding pass",  
 	:from_name=> "resume_hacker",  
 	:text=> "Thanks for your interest in resume_hacker. We'll be in touch soon",  
 	:to=>[  
   {  
     :email=> user_email,  
     :name=> user_name 
   }  
 	],  
 	:html=>"Thanks for your interest in resume_hacker. We'll be in touch soon",  
 	:from_email=>"shawnpatrickdoyle@gmail.com"  
	}  
	sending = m.messages.send message  
puts sending
erb :signin
end

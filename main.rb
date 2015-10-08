require 'sinatra'

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
get '/products' do
	@title = "products"
	erb :products	
end
get '/form' do
	@title = "our form"
	erb :form
end
post '/signin' do
	@title = "signed in"
	erb :signin
end
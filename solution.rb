require 'sinatra'


get '/' do
	@resultado=params[:resultado].to_i
	erb :index
end


post '/sum' do 	
	@resultado=(params[:resultado].to_i)+1
	erb :index	
	redirect ('/')	 	
end




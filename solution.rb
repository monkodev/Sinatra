require 'sinatra'

@resultado=0
get '/' do
	@resultado=params[:resultado].to_i
	erb :index
	
end


get '/sum' do 	
	@resultado=params[:resultado].to_i
	erb :index		
end




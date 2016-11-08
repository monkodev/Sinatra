require 'sinatra'

@resultado=0
get '/' do
	
	erb :index
	
end


get '/sum' do 	
	@resultado=params[:resultado].to_i
	erb :index		
end

get '/abuela' do 	
	@algo_mayu=params[:algo].upcase 
		if params[:algo]==@algo_mayu
				erb :manzanas
		else
			erb :mijito
		end	
end




require 'sinatra'




@resultado=0
get '/' do
	
	
	result = request.env['HTTP_USER_AGENT']
	
	result
	
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

get '/encabezado' do
	browser = Browser.new(:ua => request.user_agent)
	browser.name
end




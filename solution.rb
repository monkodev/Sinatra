require 'sinatra'
require 'rack'



@resultado=0
get '/' do	
	
	result = request.env['HTTP_PERMISO']
	#headers['permiso']==request["permiso"]
	
	if result=="soy un token secreto"
	
	
		 "Si lo logramos!"
		
	else
		 "Sin Permiso"
	#	puts "#{ request.env }"
	end
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




require 'sinatra'

get '/' do
	unless params[:nombre]
		"Hola desconocido!"
	else
		<<-HTML
			<h1>Hola #{params[:nombre]}!</h1>	
		HTML
				
	end  
end

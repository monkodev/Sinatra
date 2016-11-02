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

get '/makers/:nombre' do
	
		<<-HTML
			<h1>Hola #{params[:nombre].capitalize!}!</h1>	
		HTML

	

end

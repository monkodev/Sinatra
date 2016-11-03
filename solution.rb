require 'sinatra'

get '/' do
	erb :index
end

get '/makers/:nombre' do
	
		<<-HTML
			<h1>Hola #{params[:nombre].capitalize!}!</h1>	
		HTML
end

post '/obj' do
	"Hola! #{params[:verbo]}"
end

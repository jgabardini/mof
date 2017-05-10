require 'sinatra'

set :bind, '0.0.0.0'

get '/' do
    erb :index
end

get '/suma' do
    erb :suma
end

post '/sumar' do
	@c = params[:a].to_i + params[:b].to_i
	erb :suma
end


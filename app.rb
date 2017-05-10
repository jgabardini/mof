require 'sinatra'

get '/' do
    erb :index
end

post '/ingresar' do
  letra = params[:letra]
  @letra = letra
  erb :index
end

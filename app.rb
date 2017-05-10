require 'sinatra'

get '/' do
    @estado = "C _ _ _ _"
    @oculta = "C U R S O"
    erb :index
end

post '/ingresar' do
  letra = params[:letra]
  @letra = letra
  erb :index
end

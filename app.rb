require 'sinatra'

get '/' do
    @estado = "C _ _ _ _"
    @oculta = "C U R S O"
    erb :index
end

post '/ingresar' do
  @palabra_oculta = "V"	
  letra = params[:letra]
  if(letra == @palabra_oculta) 
  	@mensaje = "pertenece"
  else
  	@mensaje = "no pertenece"
  end
  @letra = letra
  erb :index
end

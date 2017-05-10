Given(/^ingreso al main del sitio$/) do
  visit '/'
end

Then(/^puedo ver el main del sitio$/) do
  last_response.body.should =~ /Main/m
end

When(/^ingreso letra "([^"]*)"$/) do |letra|
  fill_in(:letra, :with => letra)
  click_button(:ingresar)
end

Then(/^se imprime en pantalla letra "([^"]*)"$/) do |letra|
  last_response.body.should =~ /(#{letra})/m
end


When(/^ingreso letra "(.*?)" y clickeo "(.*?)"$/) do |letra, boton|
  fill_in(:letra, :with => letra)
  click_button(boton)
  
end

Then(/^muestra si la letra "(.*?)" existe e imprime "(.*?)"$/) do |letra, mensaje|

	last_response.body.should =~ /(#{letra})/m
	last_response.body.should =~ /(#{mensaje})/m
end




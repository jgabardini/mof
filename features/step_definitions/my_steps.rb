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

Then(/^se imprime la palabra curso con primera letra visible$/) do
  last_response.body.should =~ /C _ _ _ _/m
end




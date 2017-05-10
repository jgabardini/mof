Given(/^ingreso al main del sitio$/) do
  visit '/'
end

Then(/^puedo ver el main del sitio$/) do
  last_response.body.should =~ /Main/m
end


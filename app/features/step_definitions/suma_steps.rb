Given(/^entre a la pagina$/) do
    visit "/suma"
end

When(/^ingreso (\d+) y (\d+)$/) do |a, b|
  fill_in :a, :with => a
  fill_in :b, :with => b

  click_button "submit"
end


Then(/^resultado es (\d+)$/) do |c|
	expect(last_response.body).to include("Total: #{c}")
  
end

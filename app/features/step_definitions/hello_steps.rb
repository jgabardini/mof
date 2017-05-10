When(/^I go to the homepage$/) do
  visit "/"
end

Then(/^I should see the welcome message$/) do
  expect(last_response.body).to include("Hello")
end
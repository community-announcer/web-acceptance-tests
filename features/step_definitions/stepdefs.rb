Given("page is Community Announcer home page") do
  visit('/')
end
  
When("I search app title") do
#  page.should have_css($home_page["app-title"])
  page.assert_selector($home_page["app-title"], minimum: 1)
end
  
Then("I must see {string} text") do |expected_answer|
  expect(page).to have_selector($home_page["app-title"], text: expected_answer)
end
Given(/^a snippet titled "(.*?)" exists$/) do |title|
  FactoryGirl.create(:snippet, :title => title)
end

When(/^I create a snippet titled "(.*?)"$/) do |title|
  click_button "New snippet"
  fill_in "snippet_title", :with => title
  click_button "Create"
end

When(/^I refresh$/) do
  visit current_path
end

Then(/^I should see "(.*?)"$/) do |content|
  expect(page).to have_content(content)
end

Then(/^I should see my email$/) do
  expect(page).to have_content(@user[:email])
end

Given(/^a snippet titled "(.*?)" exists$/) do |title|
  FactoryGirl.create(:snippet, :title => title)
end

When(/^I create a snippet titled "(.*?)"$/) do |title|
  FactoryGirl.create(:snippet, :title => title, :user_id => @user[:id])
end

When(/^I refresh$/) do
  visit current_path
end

Then(/^I should see "(.*?)"$/) do |content|
  expect(page).to have_content(content)
end

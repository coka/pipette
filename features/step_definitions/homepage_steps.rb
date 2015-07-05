def define_visitor
  @visitor = { username: "visitor", email: "visitor@example.com", password: "password"}
end

def define_user
  @user = { username: "user", email: "user@example.com", password: "password" }
end

def create_user
  FactoryGirl.create(:user)
end

def sign_in
  click_link "Sign in"
  fill_in "user_login", :with => @user[:username]
  fill_in "user_password", :with => @user[:password]
  click_button "Sign in"
end

def register
  click_link "Register"
  fill_in "user_username", :with => @visitor[:username]
  fill_in "user_email", :with => @visitor[:email]
  fill_in "user_password", :with => @visitor[:password]
  fill_in "user_password_confirmation", :with => @visitor[:password]
  click_button "Register"
end

Given(/^I am on the homepage$/) do
  visit root_path
end

Given(/^I am not signed in$/) do
  define_visitor
end

Given(/^I am signed in$/) do
  define_user
  create_user
  sign_in
end

When(/^I register$/) do
  register
end

When(/^I sign in$/) do
  define_user
  create_user
  sign_in
end

When(/^I click on the "(.*?)" link$/) do |label|
  click_link(label)
end

Then(/^I should see the "(.*?)" link$/) do |label|
  expect(page.has_link?(label)).to be true
end

Then(/^I should see a registration confirmation$/) do
  expect(page).to have_content("You have signed up successfully.")
end

Then(/^I should see a sign in confirmation$/) do
  expect(page).to have_content("Signed in successfully.")
end

Then(/^I should see a sign out confirmation$/) do
  expect(page).to have_content("Signed out successfully.")
end

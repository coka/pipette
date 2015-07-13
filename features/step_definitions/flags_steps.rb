def define_user_with_flag_name
  @user = { username: "usergb", email: "usergb@example.com", password: "password"}
end

def create_user_with_flag_name
  FactoryGirl.create(:user_with_flag_name)
end

def sign_in_as_user
  define_user
  create_user
  visit new_user_session_path
  sign_in
end

def sign_in_as_user_with_flag_name
  define_user_with_flag_name
  create_user_with_flag_name
  visit new_user_session_path
  sign_in
end

def get_flag_from_username(username)
  flagHash = { "us" => "🇺🇸", "gb" => "🇬🇧", "ru" => "🇷🇺" }
  flagHash[username[-2..-1]]
end

Given(/^I am signed in as a user$/) do
  sign_in_as_user
end

Given(/^I am signed in as a user with a flag name$/) do
  sign_in_as_user_with_flag_name
end

Then(/^I should see my username in the navbar$/) do
  expect(find("#navbar")).to have_content(@user[:username])
end

Then(/^I should see my flag in the navbar$/) do
  expect(find("#navbar")).to have_content(get_flag_from_username(@user[:username]))
end

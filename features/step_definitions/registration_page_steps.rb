Then(/^I should be on the registration page$/) do
  expect(current_path).to eql(new_user_registration_path)
end

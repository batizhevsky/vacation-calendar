
Given /^a valid user$/ do
  @user = Factory.create(:valid_user)
end

Given /^an invalid user$/ do
  @user = nil
end

Given /^I am logged in/ do
  Given 'a valid user'
  And 'I fill in "username" with "user"'
  And 'I fill in "password" with "pass"'
end

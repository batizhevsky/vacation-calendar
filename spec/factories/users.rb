# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    login "user"
    name "User Userov"
    email "test@usr.com"
    password "password"
  end
end

# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    login "MyString"
    name "MyString"
    email "MyString"
    password "MyString"
  end
end

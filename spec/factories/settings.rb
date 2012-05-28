# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :settings do
    user_id 1
    admin false
    notification "MyString"
  end
end

# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :vacation do
    start "2012-05-28"
    stop "2012-05-28"
    user_id 1
  end
end

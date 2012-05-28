class Settings < ActiveRecord::Base
  attr_accessible :admin, :notification, :user_id
  belongs_to :user
end

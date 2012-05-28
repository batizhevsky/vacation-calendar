class Vacation < ActiveRecord::Base
  attr_accessible :stop, :start, :user_id
  belongs_to :user
end

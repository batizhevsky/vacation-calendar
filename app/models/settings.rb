class Settings < ActiveRecord::Base
  attr_accessible :admin, :notification, :user_id, :vacation_length
  belongs_to :user
end

# == Schema Information
#
# Table name: settings
#
#  id              :integer         not null, primary key
#  user_id         :integer
#  admin           :boolean
#  notification    :string(255)
#  vacation_length :integer
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#


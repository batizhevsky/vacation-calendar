class Userdep < ActiveRecord::Base
  attr_accessible :departament_id, :user_id
end

# == Schema Information
#
# Table name: userdeps
#
#  id             :integer         not null, primary key
#  user_id        :integer
#  departament_id :integer
#  created_at     :datetime        not null
#  updated_at     :datetime        not null
#


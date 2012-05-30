class Calendar < ActiveRecord::Base
  attr_accessible :holiday
end

# == Schema Information
#
# Table name: calendars
#
#  id         :integer         not null, primary key
#  holiday    :date
#  created_at :datetime        not null
#  updated_at :datetime        not null
#


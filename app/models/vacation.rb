class Vacation < ActiveRecord::Base
  attr_accessible :stop, :start, :user_id
  belongs_to :user
end

# == Schema Information
#
# Table name: vacations
#
#  id         :integer         not null, primary key
#  start      :date
#  stop       :date
#  user_id    :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#


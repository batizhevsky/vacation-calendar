class Departament < ActiveRecord::Base
  attr_accessible :chief, :name
  has_many :users, :through => :userdeps
  has_one :user, :foreign_key => "chief"
end

# == Schema Information
#
# Table name: departaments
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  chief      :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#


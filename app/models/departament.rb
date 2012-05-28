class Departament < ActiveRecord::Base
  attr_accessible :chief, :name
  has_many :through => :userdep
  has_one :user, :foreign_key => "chief"
end

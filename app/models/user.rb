class User < ActiveRecord::Base
  attr_accessible :email, :login, :name, :password
  has_many :userdep
  has_many :departament, :through => :userdep
  has_many :vacation
  has_one  :settings

end

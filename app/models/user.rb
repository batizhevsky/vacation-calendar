class User < ActiveRecord::Base
  attr_accessible :email, :login, :name, :password
  has_secure_password
  has_many :userdeps
  has_many :departaments, :through => :userdeps
  has_many :vacations
  has_one  :settings

  validates :login, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
  VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL }, uniqueness: { case_sensitive: false }
  validates :name, length: { maximum: 50 }
  validates :password, presence: true
  before_save { |user| user.email = email.downcase }
  before_save { |user| user.login = login.downcase }

end


# == Schema Information
#
# Table name: users
#
#  id              :integer         not null, primary key
#  login           :string(255)
#  name            :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#


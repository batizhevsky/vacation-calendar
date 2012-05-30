require 'spec_helper'

describe User do
  before { @user = User.new(name: "Test User", login: "Tester", email: "test@example.com") }
  subject {@user}

  it { should respond_to(:name) }
  it { should respond_to(:login) }
  it { should respond_to(:email) }

  it { should be_valid }

  describe "when login is not present" do
    before { @user.login = "  " }
    it { should_not be_valid }
  end
  describe "when email is not present" do
    before { @user.email = "  " }
    it { should_not be_valid    }
  end
  describe "when login  is to long" do
    before { @user.login = "a" * 51 }
    it { should_not be_valid }
  end
  describe "when name  is to long" do
    before { @user.name = "a" * 251 }
    it { should_not be_valid }
  end

  describe "when email format is valid" do
    it "should be valid" do
      addresses = %w[user@foor.Com a_US-ER@f.b.org fist.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        @user.email = valid_address
        @user.should be_valid
      end
    end
  end


end

# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  login      :string(255)
#  name       :string(255)
#  email      :string(255)
#  password   :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#


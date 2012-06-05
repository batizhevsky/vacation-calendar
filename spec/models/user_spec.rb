require 'spec_helper'

describe User do
  before { @user = User.new(name: "Test User", login: "Tester", email: "test@example.com", password: "pass") }
  subject {@user}

  it { should respond_to(:name) }
  it { should respond_to(:login) }
  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:authenticate) }

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

  describe "when email is already taken" do
    before do
      user_with_same_email = @user.dup
      user_with_same_email.login = 'newtest'
      user_with_same_email.email = @user.email.upcase
      user_with_same_email.save
    end

    it { should_not be_valid }
  end

  describe "when login is already taken" do
    before do
      user_with_same_login = @user.dup
      user_with_same_login.email = "ttt@aaa.ar"
      user_with_same_login.login = @user.login.upcase
      user_with_same_login.save
    end
    it { should_not be_valid}
  end

  describe "when password do not present" do
    before do
      @user.password = ""
    end
    it { should_not be_valid }
  end

  require File.expand_path('spec/spec_helper')

  describe "auth  user" do
    before { @user.save }
    let(:found_user) { User.find_by_login(@user.login) }

    describe "valid passwors" do
      it { should == found_user.authenticate(@user.password) }
    end
    describe "invalid pass" do
      let(:user_invaild_pass) { found_user.authenticate("invalid") }
      it { should_not == user_invaild_pass }
      specify { user_invaild_pass.should be_false }
    end

  end


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


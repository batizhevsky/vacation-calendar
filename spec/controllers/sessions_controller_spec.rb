require 'spec_helper'

describe SessionsController do
  it "signin page should be in right url" do
    signin_path.should == '/signin'
    response.should render_template('sessions/new')

  end


  it "signup page should be in right url" do
    signup_path.should == '/signup'
  end
  it "logout page should be in right url" do
    logout_path.should == '/logout'
  end


end

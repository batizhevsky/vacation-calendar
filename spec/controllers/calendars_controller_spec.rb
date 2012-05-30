require 'spec_helper'

describe CalendarsController do

  before :each do
    @user = Factory.create(:user)
    visit root_path
  end

  describe "/ page" do
    it "should redirect to login page if user not logined" do
      @user = nil
      response.should redirect_to(signin_path)
    end
    it "should redirect to year if user loged" do
      get 'index'
      response.should redirect_to(calendars_year_path)
    end
  end

  describe "GET 'year' calendar" do
    it "returns http success" do
      get 'year'
      response.should be_success
    end
  end

  describe "GET 'month'" do
    it "returns http success" do
      get 'month'
      response.should be_success
    end
  end


end

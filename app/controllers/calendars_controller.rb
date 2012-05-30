class CalendarsController < ApplicationController
  #before_filter :signed_user
  def index
    redirect_to :action => "year"
  end

  def year
    @user = params[:session]

  end

  def month
  end

end

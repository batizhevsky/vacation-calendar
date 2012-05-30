class ApplicationController < ActionController::Base
  protect_from_forgery

   def signed_user
      unless signed_in?
        redirect_to signin_path
      end
   end

   def signed_in?
     !current_user.nil?
   end

   def current_user
     @current_user = @user #TODO: make chaking
   end
end

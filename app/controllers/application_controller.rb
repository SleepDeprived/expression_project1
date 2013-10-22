class ApplicationController < ActionController::Base
  protect_from_forgery

  # before_filter :authenticate, on: []

  # def authenticate
  #   if session[:user_id]
  #     @user = User.find(session[:user_id])
  #   else
  #     redirect_to(root_path)
  #   end
  # end

end

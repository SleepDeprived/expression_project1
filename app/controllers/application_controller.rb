class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate

  def authenticate
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
  end

end

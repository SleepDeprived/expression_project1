class SessionController < ApplicationController

  def main
    # this will be the landing page that everyone visiting the site can see, members will be able to login, new visitors can sign up and everyone will be able to directly search for stocks from this page
  end

  def new
    # this page has the username, password, password_confirmation and submit so a user can login
  end

  def create
    email = params[:email]
    password = params[:password]
    user = User.where(email: email).first
    if user && user.authenticate(password)
      session[:user_id] = user.id
      redirect_to(user) # Active record will figure out that this should be user/:id and will use the user's id from the session cookie
    else
      flash[:notice] = "incorrect, please try again"
      render :new
    end
  end
end

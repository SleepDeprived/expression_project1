class SessionController < ApplicationController

  def new
    if session[:user_id].present?
      flash[:notice] = "You are already logged in"
      redirect_to @user
    end
    # calls post to '/sessions'
  end

# create
#   this actually stores the session
#     session[:user_id] = 5/some number
  def create
    # first find the user with the given email address
      # check the password on the existing db entry
      input_password = params[:password]  # password user entered on the login screen
      user = User.where(email: params[:email]).first

      if user && user.authenticate(input_password)
        session[:user_id] = user.id
        #redirect_to "/user/#{user.id}"
        redirect_to(user)
      else
        redirect_to(login_path)
      end
    # if they match
    #   set the session
    # otherwise
    #   yo, wrong password


     # or can write root_path if root path is set
  end

# destroy
#   actually removes the userid from the session
      # session[:user_id] = nil

  def destroy
     session[:user_id] = nil
     redirect_to '/login'
    # redirect to the search, so the root
  end

end


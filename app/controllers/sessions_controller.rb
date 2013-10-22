# class SessionController < ApplicationController

#   def new
#   end

#   def create
#     email = params[:email]
#     password = params[:password]
#     user = User.where(email: email).first
#     if user && user.authenticate(password)
#       session[:user_id] = user.id
#       redirect_to(user) # Active record will figure out that this should be user/:id and will use the user's id from the session cookie
#     else
#       flash[:notice] = "incorrect, please try again"
#       render :new
#     end
#   end
# end

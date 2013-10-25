class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to('/login')
    else
      render :new
    end
  end

  def show
    if @user.nil?
      redirect_to('/login')
      flash[:notice] = "Please login to access the user dashboard"
    end
  end


end

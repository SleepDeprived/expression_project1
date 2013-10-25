class CollectionsController < ApplicationController

  def create
    if @user.nil?
      flash[:notice] = "Please sign in to add the stock to your collection"
      redirect_to('/login')
    else
      @collection = Collection.new(params[:collection])
      @user.collections << @collection
      redirect_to("/dashboard")
    end
  end

end

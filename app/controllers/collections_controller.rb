class CollectionsController < ApplicationController

  def create
    @collection = Collection.new(params[:collection])
    @user.collections << @collection
    redirect_to("/dashboard")
  end

end

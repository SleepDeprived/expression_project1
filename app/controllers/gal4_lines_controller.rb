class Gal4LinesController < ApplicationController

  def main
  end

  def index
    # query the database from either the gene name input OR the time & location input
    if params.keys.include?("search by gene")
      @gal4 = Gal4Line.where(:gene => params[:gene])

    # elsif
    #   params.keys.include?("search by location")
    #   Gal4Line.where(:location => params[:location], stage.name: params[:time])
    # else
    #   redirect_to :back
    end

    # @results = Gal4Line.where({location: params[:location]})
    #         add stage if I can figure out a way to get it to include between the stages and not an exact match
  end

  def new
    @gal4 = Gal4Line.new
    @expression = ExpressionProfile.new
    binding.pry
  end

  def create
    @gal4 = Gal4Line.new(params[:gal4_line])
    if @gal4.save
      redirect_to("/gal4_lines/#{@gal4.id}") # this won't work but I need to figure out how to pass across the session params of the user that is logged in
    else
      render :new
      flash[:error] = "This Gal4 line was not saved to the database."
    end
  end

  def show
    # single record result from a search
    @result = Gal4Line.find(params[:id])
    @collection = Collection.new
  end

  def edit
    if @user.nil?
      flash[:notice] = "You need to be signed in to edit a page."
      redirect_to login_path
    end
    @gal4 = Gal4Line.find(params[:id])
  end

  def update
     @gal4 = Gal4Line.find(params[:id])
    if @gal4.update_attributes(params[:gal4_line])
      redirect_to @gal4
    else
      render :edit
    end
  end

  def destroy
  end


end


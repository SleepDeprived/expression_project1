class Gal4LinesController < ApplicationController

   def main
    # this will be the landing page that everyone visiting the site can see, members will be able to login, new visitors can sign up and everyone will be able to directly search for stocks from this page
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
  end

  def create
    @gal4 = Gal4Line.new(params[:gal4_line])
    if @gal4.save
      redirect_to("/gal4_lines/#{@gal4.id}") # this won't work but I need to figure out how to pass across the session params of the user that is logged in
    else
      render :new
      # flash some warning about why it didn't save
    end
  end

  def show
    # single record result from a search
    @result = Gal4Line.find(params[:id])
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


class Gal4LinesController < ApplicationController

  def main
  end

  def index
    # query the database from either the gene name input OR the time & location input
    if params.keys.include?("search by gene")
      @gal4 = Gal4Line.where(:gene => params[:gene])
    elsif
      params.keys.include?("search by location")
      @gal4 = Gal4Line.joins("INNER JOIN expression_profiles ON gal4_lines.id = expression_profiles.gal4_line_id INNER JOIN expression_profiles_locations ON expression_profiles.id = expression_profiles_locations.expression_profile_id INNER JOIN locations ON expression_profiles_locations.location_id = locations.id WHERE locations.name = '#{params[:location]}'")
    #   Gal4Line.where(:location => params[:location], stage.name: params[:time])
    else

            # bar = Location.where(name: "test2")
            # junk = bar.map{|record| record.expression_profiles}
            # stuff = junk.map {|element| element[0][:gal4_line_id]}

      redirect_to :back
    end

    # @results = Gal4Line.where({location: params[:location]})
    #         add stage if I can figure out a way to get it to include between the stages and not an exact match
  end

  def new
    @gal4 = Gal4Line.new
    @stages = Stage.all
    @chromosomes = Chromosome.all
    # @expression = ExpressionProfile.new
    # 1.times {@gal4.chromosome.build}
    1.times do
      profile = @gal4.expression_profiles.build
      1.times {profile.locations.build}
    end
  end

  def create
    @gal4 = Gal4Line.new(params[:gal4_line])
    if @gal4.save
      redirect_to @gal4 # this won't work but I need to figure out how to pass across the session params of the user that is logged in
    else
      render :new
      flash[:error] = "This Gal4 line was not saved to the database."
    end
  end

  def show
    # single record result from a search
    @result = Gal4Line.find(params[:id])
    if @result.expression_profiles.first.start_stage_id == nil
      @start_stage = ""
      @start_time = ""
      @end_stage = ""
      @end_time = ""
    else
      @start_stage = Stage.find(@result.expression_profiles.first.start_stage_id).name
      @start_time = Stage.find(@result.expression_profiles.first.start_stage_id).time_range
      @end_stage = Stage.find(@result.expression_profiles.first.end_stage_id).name
      @end_time = Stage.find(@result.expression_profiles.first.end_stage_id).time_range
    end

    @collection = Collection.new
  end

  def edit
    @stages = Stage.all
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


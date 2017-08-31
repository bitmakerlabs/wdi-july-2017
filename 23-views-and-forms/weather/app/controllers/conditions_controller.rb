class ConditionsController < ApplicationController

  def index
    render :index
  end

  def city
    @city = params[:city]
    @comment = Comment.new
    render :city_weather
  end

  def create
    # @latest_comment = params[:message]
    Comment.create({message: params[:message], city: params[:city]})
    # params[:message]
    # params[:city]
    render :index
  end

end

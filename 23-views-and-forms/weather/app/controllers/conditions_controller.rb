class ConditionsController < ApplicationController

  def index
    render :index
  end

  def city
    @city = params[:city]
    render :city_weather
  end

  def create
    #code
  end

end

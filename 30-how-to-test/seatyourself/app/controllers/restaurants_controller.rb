class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reservation = @restaurant.reservations.build
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new
    @restaurant.address = [:restaurant][:address]
    @restaurant.description = [:restaurant][:description]
    @restaurant.name = [:restaurant][:name]
    @restaurant.phone = [:restaurant][:phone]
    @restaurant.picture = [:restaurant][:picture]
    @restaurant.category = [:restaurant][:category]
    @restaurant.capacity = [:restaurant][:capacity]

    if @restaurant.save
      redirect_to restaurants_url
    else
      render :new
    end
  end

end

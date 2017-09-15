class ReservationsController < ApplicationController

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation = @restaurant.reservations.build
    @reservation.begin_time = params[:reservation][:begin_time]
    @reservation.notes = params[:reservation][:notes]
    @reservation.people = params[:reservation][:people]
    @reservation.user = current_user

    if @reservation.save
      redirect_to @reservation.user, :notice => 'reservation made'
    else
      render 'restaurants/show'
    end
  end

end

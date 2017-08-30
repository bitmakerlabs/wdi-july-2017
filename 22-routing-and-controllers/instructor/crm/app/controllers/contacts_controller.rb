class ContactsController < ApplicationController

  # Part 2: Do something if route is hit
  def index
    render :index
  end

  def show
    @contact = params[:id]

    render :show
  end

end

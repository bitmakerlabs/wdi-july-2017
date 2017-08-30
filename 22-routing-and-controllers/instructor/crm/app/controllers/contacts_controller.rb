class ContactsController < ApplicationController

  def index
  end

  def show
    @contact = params[:id]
  end

end

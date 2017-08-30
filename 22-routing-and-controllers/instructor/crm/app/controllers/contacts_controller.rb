class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
  end

  def create
    # Save the contact
    # If saving is successful,
    redirect_to contacts_url
  end

  def edit
  end

  def update
    # Update the contact
    # If saving is successful
    redirect_to contacts_url
  end

end

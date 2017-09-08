class SessionsController < ApplicationController
  def new
  end

  def create
    u = User.find_by(email: params[:session][:email])

    if u && u.authenticate(params[:session][:password])

      # Put a wristband on the user
      session[:user_id] = u.id

      redirect_to root_url
    else
      render :new
    end
  end

  def destroy
    # Take off the virutal wristband
    session[:user_id] = nil

    redirect_to root_url
  end
end

# These 3 hashes are always available to you in a Rails controller
# params
# session
# flash
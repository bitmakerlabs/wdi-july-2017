class SessionsController < ApplicationController
  def new
  end

  def create
    u = User.find_by(email: params[:session][:email])

    if u && u.authenticate(params[:session][:password])
      redirect_to root_url
    else
      render :new
    end
  end

  def destroy
  end
end

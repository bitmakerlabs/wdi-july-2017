class UsersController < ApplicationController

  def show
    unless current_user && current_user.id == params[:id].to_i
      redirect_to :root, :error => 'Cannot view reservations for other users'
    end
    @user = current_user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.name = [:user][:name]
    @user.email = [:user][:email]
    @user.password = [:user][:password]
    @user.password_confirmation = [:user][:password_confirmation]

    if @user.save
      self.current_user = @user
      redirect_to root_path, :notice => "Welcome #{@user.name}!"
    else
      render :new
    end
  end

end

class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(name: params[:user][:name])
    if @user.try(:authenticate, params[:user][:password])
      session[:user_id] = @user.id
      redirect_to "/users/#{@user.id}"
    else
      redirect_to "/sessions/new"
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to "/users/new"
  end


end

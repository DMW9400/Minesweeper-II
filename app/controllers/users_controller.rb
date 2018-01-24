class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(name: params[:user][:name])
    redirect_to "/users/#{@user.id}"
  end

  def show
    @user = User.find_by(id: params[:id])
  end

end

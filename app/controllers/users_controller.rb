class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :show]

  def new
    @user = User.new
  end

  def create
    # byebug
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      session[:user_id] = @user.id
      redirect_to "/users/#{@user.id}"
    else
      redirect_to '/users/new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private
    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation)
    end

end

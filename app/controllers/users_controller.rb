class UsersController < ApplicationController

  def index
    @users = User.all
    render :index
  end

  def new
    @user = User.new
    render :new
  end

  def create

  end

  private
  def user_params
    params.require(:user).permit()
  end

end

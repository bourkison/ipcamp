class UsersController < ApplicationController
	before_action :check_if_logged_in, :only => [:edit]


  def index
    @users = User.all
    render :index
  end

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new user_params
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:firstname, :lastname, :dob, :country, :credit_card_no, :name_on_card, :expiry, :ccv, :email, :password, :password_confirmation, :username)
  end

end

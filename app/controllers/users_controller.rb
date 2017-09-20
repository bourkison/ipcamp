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

  def destroy
    user = User.find params[:id]
    User.destroy user.id

    redirect_to root_path
  end

  def edit
		redirect_to root_path unless @current_user.id == params[:id].to_i
    @user = User.find params[:id]
  end

	def update
		@user = User.find params[:id]
		@user.update user_params

		redirect_to root_path
	end

  def show
    @user = User.find params[:id]
    render :show
  end

  private
  def user_params
    params.require(:user).permit(:firstname, :lastname, :dob, :country, :credit_card_no, :name_on_card, :expiry, :ccv, :email, :password, :password_confirmation, :username)
  end

end

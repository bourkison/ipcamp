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

end

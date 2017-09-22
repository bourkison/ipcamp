class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
	before_action :fetch_user

	private
	def fetch_user
		@current_user = User.find_by :id => session[:user_id] if session[:user_id].present?
		session[:user_id] = nil unless @current_user.present?
		puts @current_user.inspect
		puts session[:user_id]
	end

	def check_if_logged_in
		redirect_to login_path unless @current_user.present?
	end

	def current_authentication
		@authentication = Authentication.find authentication[:user_id] if authentication[:user_id]
	end

end

class AuthenticationsController < ApplicationController
	def index
		@authentications = Authentication.all
	end

	def create
		auth = request.env["omniauth.auth"]
		authentication = @current_user.authentications.create :provider => auth['provider'], :uid => auth['uid']
		flash[:notice] = "Authentication Successful"
		redirect_to root_path
	end

	def destroy
		@authentication = Authentication.find params[:id]
		@authentication.destroy
		flash[:notice] = "Successfully logged out."
		redirect_to root_path
	end
end

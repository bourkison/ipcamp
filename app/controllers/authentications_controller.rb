class AuthenticationsController < ApplicationController
	def index
		@authentications = Authentication.all
	end

	def create
		auth = request.env["omniauth.auth"]
		@current_user.authentications.destroy_all
		@authentication = @current_user.authentications.create :provider => auth['provider'], :uid => auth['uid'], :oauth_token => auth['oauth_token']
		@authentication.provider = auth.provider
		@authentication.uid = auth.uid
		@authentication.oauth_token = auth.credentials.token
		@authentication.oauth_expires_at = Time.at(auth.credentials.expires_at)
		@authentication.save!
		@current_user.authentication_id = @authentication.id
		@current_user.save
		flash[:notice] = "Authentication Successful"
		redirect_to root_path
	end

	def destroy
		@authentication = @current_user.authentications.first
		@authentication.destroy
		flash[:notice] = "Successfully logged out."
		redirect_to root_path
	end
end

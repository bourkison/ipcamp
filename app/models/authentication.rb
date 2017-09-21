class Authentication < ApplicationRecord
	belongs_to :user
	# attr_accessible :user_id, :provider, :uid

	def self.from_omniauth(auth)
		where(auth.slide(:provider, :uid)).first_or_initialize.tap do |user|
			@authentication.provider = auth.provider
			@authentication.uid = auth.uid
			@authentication.oauth_token = auth.credentials.token
			@authentication.oauth_expires_at = Time.at(auth.credentials.expires_at)
			@authentication.save!
		end
	end
end

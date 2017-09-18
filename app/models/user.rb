class User < ApplicationRecord
	has_many :listings
	has_many :purchases
	has_many :comments
	# has_secure_password
end

class Listing < ApplicationRecord
	belongs_to :user
	has_many :bids
	has_many :comments
	has_one :purchase
end

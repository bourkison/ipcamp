class ListingsController < ApplicationController
	def show
		@listing = Listing.find params[:id]
		@user = @listing.user_id


		@bids = @listing.bids
		@bid = Bid.new
	end
end

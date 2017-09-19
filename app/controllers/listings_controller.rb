class ListingsController < ApplicationController
	def show
		@listing = Listing.find params[:id]
		@user = @listing.user_id
		@comments = @listing.comments
		@comment = Comment.new
		@bids = @listing.bids
		@bid = Bid.new
	end
end

class ListingsController < ApplicationController
	def show
		@listing = Listing.find params[:id]
		@user = @listing.user_id


		# @bids = Bid.find :all, :conditions => 
	end
end

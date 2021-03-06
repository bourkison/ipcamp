class BidsController < ApplicationController
	def create
		@bid = Bid.new bid_params
		listing = Listing.find params[:listing_id]

		highestBid = listing.bids.pluck(:amount).max || 0

		if @bid.amount > highestBid
			@current_user.bids << @bid
			listing.bids << @bid
			redirect_to request.referer
		else
			flash[:error] = "Error, the bid must be greater than the highest bid."
		  redirect_to request.referer
		end
	end



	private
	def bid_params
		params.require(:bid).permit(:amount)
	end
end

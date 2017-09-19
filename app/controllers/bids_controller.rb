class BidsController < ApplicationController
	def create


			if @bid <= listing.bids.last
				@bid = Bid.new bid_params
				@current_user.bids << @bid
				listing = Listing.find params[:listing_id]
				listing.bids << @bid
				redirect_to request.referer
			else
			  redirect_to request.referer
			else
			end

	end



	private

	def bid_params
		params.require(:bid).permit(:amount)
	end
end

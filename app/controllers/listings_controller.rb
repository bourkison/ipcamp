class ListingsController < ApplicationController
	def show
		@listing = Listing.find params[:id]
		@user = @listing.user_id
		@bids = @listing.bids

		render :show
	end

<<<<<<< HEAD
	def new
		@listing = Listing.new
		render :new
=======
		@bids = @listing.bids
		@bid = Bid.new
>>>>>>> 99fa3fca3aacabe0d13401f2a77fbd0935933206
	end

	def create
		@listing = Listing.new listing_params
		@current_user.listings << @listing

		if @listing.save
			redirect_to @listing
		else
			render :new
		end
	end

	private
	def listing_params
		params.require(:listing).permit(:name, :description, :url, :photo)
	end

end

class ListingsController < ApplicationController
	def show
		@listing = Listing.find params[:id]
		@user = @listing.user_id
		@bid = Bid.new
		@bids = @listing.bids
		@comments = @listing.comments
		@comment = Comment.new

		render :show
	end

	def new
		@listing = Listing.new
		render :new
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

	def destroy
		listing = Listing.find params[:id]
		Listing.destroy listing.id

		redirect_to root_path
	end

	private
	def listing_params
		params.require(:listing).permit(:name, :description, :url, :photo)
	end

end

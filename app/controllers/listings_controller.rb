class ListingsController < ApplicationController
	def index
		@listings = Listing.all

		if params[:search]
			@listings = Listing.search(params[:search]).order("expiry DESC")
		else
			@listings = Listing.all.order("expiry DESC")
		end
	end

	def show
		@follow = Follow.new
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
		expiry = @listing.created_at + 1.weeks
		@listing.expiry = expiry

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
		params.require(:listing).permit(:name, :description, :url, :photo, :expiry)
	end

end

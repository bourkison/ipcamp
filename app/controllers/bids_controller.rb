class BidsController < ApplicationController
	def new
		@bid = Bid.new
		@bid.user_id = @current_user
		@bid.save
	end
	def create
		@bid = Bid.new
		@bid.user_id = @current_user
		@bid.save
	end


end

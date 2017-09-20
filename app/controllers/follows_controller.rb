class FollowsController < ApplicationController

  def create
    @follow = Follow.create
    @current_user.follows << @follow
    listing = Listing.find params[:listing_id]
    listing.users << @current_user
  end

end

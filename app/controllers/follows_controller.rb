class FollowsController < ApplicationController

  def create
    @follow = Follow.create
    @current_user.follows << @follow
    listing = Listing.find params[:listing_id]
    listing.users << @current_user
  end

  def destroy
    follow = @current_user.follows.find_by listing_id: params[:id]
    follow.destroy

    redirect_to request.referer
  end

end

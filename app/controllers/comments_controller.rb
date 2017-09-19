class CommentsController < ApplicationController
	def create
		@comment = Comment.new comment_params
		@current_user.comments << @comment
		listing = Listing.find params[:listing_id]
		listing.comments << @comment
		redirect_to request.referer
	end







	private

	def comment_params
		params.require(:comment).permit(:content)
	end
end

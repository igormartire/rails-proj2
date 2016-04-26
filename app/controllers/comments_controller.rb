class CommentsController < ApplicationController
	before_action :find_commentable

	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.new comment_params
		@comment.save
		render :json => Comment.where(["item_id = ?", comment_params[:item_id].to_i])
	end

	private

	def comment_params
		params.require(:comment).permit(:username, :text, :item_id)
	end

	def find_commentable
		@commentable = Comment.find_by_id(params[:id]) if params[:id]
		@commentable = Item.find_by_id(params[:id]) if params[:id]
	end

end

class CommentsController < ApplicationController
	before_action :find_commentable

	def new
		@comment = Comment.new
	end

	def create
		@comment = @commentable.comments.new comment_params

		if @comment.save
			redirect_to :back, notice: 'Success!'
		else 
			redirect_to :back, notice: 'Failed!'
		end
	end

	private

	def comment_params
		params.require(:comment).permit(:body)
	end

	def find_commentable
		@commentable = Comment.find_by_id(params[:id]) if params[:id]
		@commentable = Item.find_by_id(params[:id]) if params[:id]
	end

end

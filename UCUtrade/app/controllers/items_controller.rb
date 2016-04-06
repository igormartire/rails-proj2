class ItemsController < ApplicationController
	def show
		@items = Item.all
	end

	def showItem
		@item = Item.find(params[:id])
		@comments = Comment.all
	end
end

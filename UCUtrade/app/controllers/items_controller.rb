class ItemsController < ApplicationController
	def show
		@users = User.all
	end
end

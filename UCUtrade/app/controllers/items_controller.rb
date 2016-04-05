class ItemsController < ApplicationController
	def index
		@items = Item.all
	end

	def show
		@item = Item.find(params[:id])
	end

	def new
		@item = Item.new
	end

	def create
		@item = Item.create(user_params)
    	if @item.save #If saving the user was successful
    		#flash[:error] = nil
      		redirect_to :controller => '/item', :action => 'show'#show #Go to the show view of the user
    	else
    		#flash[:error] = @pokemon.errors.full_messages.to_sentence
      		render "new" #Go to the new view for
    	end
	end
end

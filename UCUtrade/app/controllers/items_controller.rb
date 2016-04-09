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
		@item.user_id = current_user.id
		@item.available = true
    	if @item.save #If saving the user was successful
    		#flash[:error] = nil
      		redirect_to :controller => '/item', :action => 'show'#show #Go to the show view of the user
    	else
    		#flash[:error] = @pokemon.errors.full_messages.to_sentence
      		render "new" #Go to the new view for
    	end
	end

	def edit
		@item = Item.find(params[:id])
	end

	def update
		@item = Item.find(params[:id])
    	if @item.update_attributes(item_params_edit)
    		redirect_to => 'item', :action => 'show'
    		# Handle a successful update.
    	else
    		render 'edit'
    	end
	end

	private
	def user_params
  		params.require(:item).permit( :name, :price, :description)
  	end

  	def item_params_edit
  		params.require(:item).permit( :name, :price, :description, :available)
  	end
end

class ItemsController < ApplicationController

    def index
        @items = Item.all
        if params[:search]
            @items = Item.search(params[:search])
        end
    end
    
	def new
		@pitem = Item.new #Creates an empty user object.
	end

  	def create
    	@item = Item.create(user_params)
    	@item.available = true;
    	@item.current_user = current_user.id
    	if @item.save #If saving the user was successful
    		flash[:error] = nil
      		redirect_to current_user #Go to the show view of the user
    	else
    		flash[:error] = @item.errors.full_messages.to_sentence
      		render "new" #Go to the new view for
    	end
  	end
  	
  	def edit
  	end
  	


end

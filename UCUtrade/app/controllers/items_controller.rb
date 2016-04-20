class ItemsController < ApplicationController
<<<<<<< HEAD

    def index
        @items = Item.all
        if params[:search]
            @items = Item.search(params[:search])
        end
    end
    
	def new
		@item = Item.new #Creates an empty user object.
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
    @item = Item.find(params[:id])
    end

    def update
    @item = Item.find(params[:id])
      if @item.update_attributes(params[:item])
        redirect_to current_user
      else
        render :action => :edit
      end
    end
    
    private
  	def user_params
  		params.require(:item).permit(:name, :price, :description)
  	end
end

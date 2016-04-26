class ItemsController < ApplicationController
    def index
        @items = Item.all
        if params[:search]
            @items = Item.search(params[:search])
        end
    end

	  def new
		    @item = Item.new #Creates an empty user object.
	  end

    def show
      @item = Item.find(params[:id])
      @presenter = {
        :comments => Comment.where("item_id = :id", { id: params[:id] }),
        :form => {
          :action => comments_path,
          :id => params[:id],
          :csrf_param => request_forgery_protection_token,
          :csrf_token => form_authenticity_token
        }
      }
    end

    def destroy
      @item = Item.find(params[:id])
      @item.destroy
      flash.notice = "Item removed successfully."
      redirect_to user_path(current_user.id)
    end

  	def create
    	  @item = Item.create(user_params)
    	  @item.available = true;
    	  @item.user_id = current_user.id
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
      if params[:item][:name]
        @item.name = params[:item][:name]
      end
      if params[:item][:price]
        @item.price = params[:item][:price]
      end
      if params[:item][:description]
        @item.description = params[:item][:description]
      end
      if params[:item][:avatar]
        @item.avatar = params[:item][:avatar]
      end
      if @item.save
          redirect_to action: "show"
      else
          render :action => :edit
      end
    end

    private
  	def user_params
  		  params.require(:item).permit(:name, :price, :description, :avatar)
  	end
end

class ItemsController < ApplicationController
    def index
        @items = Item.order(:id).where available: true
        if params[:search]
            @items = @items.search(params[:search])
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
    	  @item = Item.create(item_params)
    	  @item.available = true;
    	  @item.user_id = current_user.id
    	  if @item.save
    		    flash[:error] = nil
      		  redirect_to current_user
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

      @item.available = params[:item][:available]

      if @item.save
          redirect_to user_path(current_user.id)
      else
          render :action => :edit
      end
    end

    private
  	def item_params
  		  params.require(:item).permit(:name, :price, :description, :avatar)
  	end
end

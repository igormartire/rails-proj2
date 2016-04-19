class ItemsController < ApplicationController

    def index
        @items = Item.all
        if params[:search]
            @items = Item.search(params[:search])
        end
    end


end

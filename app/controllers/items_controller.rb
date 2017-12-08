class ItemsController < ApplicationController
  
  def new 
    @item = Item.new
  end
  
  def create
    @user = current_user
    @items = @user.items
    @item = current_user.items.build(item_params)
    @item.user = @user
    @new_item = Item.new

    if @item.save
      flash[:notice] = "Item was saved."
      redirect_to current_user
    else
      flash[:error] = "There was an error saving the item. Please try again."
      render :new
    end
  end
  
  
  
  private
  
  def item_params
    params.permit(:name, :user)
  end
  
end

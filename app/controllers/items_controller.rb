class ItemsController < ApplicationController
  before_action :set_item, :only => [:show, :edit, :update, :destroy, :mark]

  def index
    @items = Item.all
  end

  def mark
    @item.update(mark: !(@item.mark))
  end

  def new
    @item = Item.new
  
  end

  def create
    @item = Item.new(item_params)

    if @item.save
      redirect_to items_url
    else
      render  :action => :new
    end
  end

  def update

    if @item.update_attributes(item_params)
      redirect_to item_path(@item)
    else
      render  :action => :edit
    end
  end

  def destroy
    
    @item.destroy

    redirect_to items_url
  end
 
private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:title, :duedate, :note, :description, :file_location)
  end
end

class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :is_owner, only: [:new, :create, :edit, :update, :destroy]
  def index
    puts params
    @items = Item.where(user_id: params[:user_id])
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    if @item.update(item_params)
      redirect_to user_items_path(current_user)
    else
      puts "couldn't update"
    end
  end

  def new
    @item = Item.new
  end

  def create
    @item = current_user.items.new(item_params)

    if @item.save
      redirect_to user_items_path(current_user)
    else
      puts "can't save"
    end
  end

  def destroy
     if @item.destroy
      redirect_to user_items_path(current_user)
     end
  end


  private
    def is_owner
      redirect_to root_path unless current_user.id == params[:user_id].to_i
    end
    def set_item
      @item = Item.find(params[:id])
    end
    def item_params
      params.require(:item).permit(:name)
    end
end

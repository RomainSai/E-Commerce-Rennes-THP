class ItemsController < ApplicationController
  def index
    @items = Item.all
    puts params.inspect
  end

  def create
  end

  def show
    @item = Item.find(params[:id])
    puts params.inspect
  end

  def update
    @item = Item.find(params[:id])
  end

  def destroy
  end
end

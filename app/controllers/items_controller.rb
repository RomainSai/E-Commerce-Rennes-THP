class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def create
  end

  def show
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
  end

  def destroy
  end
end

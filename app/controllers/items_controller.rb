class ItemsController < ApplicationController
  def index
    @item = Item.first
  end

  def create
  end

  def show
    @item = Item.find(params[:id])
  end

  def update
  end

  def destroy
  end
end

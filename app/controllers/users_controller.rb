class UsersController < ApplicationController
  def show
    @user = current_user
  end
  def orders
    @user = User.find(params[:id])
  end
end

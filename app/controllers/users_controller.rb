class UsersController < ApplicationController
  def show
    @user = current_user
  end
  def order
    @user = User.find(params[:id])
  end
end

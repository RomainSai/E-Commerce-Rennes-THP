class UsersController < ApplicationController
  def show
    @user = current_user
  end
  def order
    @user = current_user
  end
end

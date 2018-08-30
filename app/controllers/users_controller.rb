class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def order
    @user = current_user
  end

	def update
		@user = current_user
		@user.avatar.purge
		@user.avatar.attach(params.require(:user)[:avatar])
    redirect_to user_path(current_user.id)
  end
end
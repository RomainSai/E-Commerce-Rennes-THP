class CartsController < ApplicationController
    attr_accessor :cart
    around_action :cart_exists?, only: [:new]

    def new
      @current_cart = 
    end

    def create
      @cart = Cart.create(user_id: current_user.id)
      p '-' * 20 + 'cart created' + '-' * 20
    end

    def cart_exists?
      if condition
        create
      else
      end
    end

end

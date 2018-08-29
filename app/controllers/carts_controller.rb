class CartsController < ApplicationController
    attr_accessor :cart
    #around_action :cart_exists?, only: [:new]

    def index
    puts "------dans index de Carts----"
    end


    def new
      puts "------dans new de Carts----"
      #@current_cart = 
    end

    def create
      puts "------dans create de Carts----"
      @cart = Cart.create(user_id: current_user.id)
      p '-' * 20 + 'cart created' + '-' * 20
    end

    def cart_exists? 
      puts "------dans cart_exists?----"
      @cart = Cart.create(user_id: current_user.id)
    end

    def show
     puts "------dans show de Carts----" 
     cart_exists?
    end

    private 
    
    
end

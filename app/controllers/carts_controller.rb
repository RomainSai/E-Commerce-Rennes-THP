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
      if Cart.find_by(user_id: current_user.id).user_id == current_user.id
        @cart = Cart.find_by(user_id: current_user.id)
      else
        create
      end
    end

    def show
     puts "------dans show de Carts----"
     cart_exists?
     p '-' * 20 + @cart.id.to_s + '-' * 20
     p '-' * 20 + @cart.user_id.to_s + '-' * 20
     p '-' * 20 + 'inserting items' + '-' * 20
     insert_items
     p '-' * 20 + @cart.items.last.to_s + '-' * 20
     #p '-' * 20 + @cart.items.last.title.to_s + '-' * 20

     # @cart_total = @cart.all
    end

    def insert_items
      item = Item.find(params[:id])
      @cart.items << item

      #  p '-' * 20 + @new_item.id.to_s + '-' * 20
    end

    private

end
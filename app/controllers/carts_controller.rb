class CartsController < ApplicationController
    attr_accessor :cart
    before_action :authenticate_user!

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
      if Cart.exists?(user_id: current_user.id)
        @cart = Cart.find_by(user_id: current_user.id)
      else
        create
      end
    end

    def show
      if user_signed_in?
        cart_exists?
        insert_items
        @cart_total = 0
        @cart.items.each do |item|
          @cart_total += item.price.to_f
        end
      else
        redirect_to new_user_session_path
      end
    end

    def insert_items
      item = Item.find(params[:id])
      @cart.items << item

      #  p '-' * 20 + @new_item.id.to_s + '-' * 20
    end

    def delete_item
      @cart.items.destroy(params[:item_id])
    end

    private

end

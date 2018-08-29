class CartsController < ApplicationController
    attr_accessor :cart
    before_action :authenticate_user!

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
      if Cart.exists?(user_id: current_user.id)
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
     p '-' * 20 + @cart.items.last.price.to_s + '-' * 20
     p '-' * 20 + 'items inserted' + '-' * 20
     @cart_total = 0
     @cart.items.each do |item|
       p '-' * 20 + item.price.to_s + '-' * 20
       @cart_total += item.price.to_f
       p '-' * 20 + '€' + @cart_total.to_s + '-' * 20
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

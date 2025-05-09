class CartsController < ApplicationController
    before_action :authenticate_user!
  
    def create
      @cart_item = current_user.cart_items.create(cart_item_params)
      redirect_back fallback_location: root_path, notice: 'Item added to cart!'
    end
  
    def index
      @cart_items = current_user.cart_items
    end
  
    def destroy
      @cart_item = current_user.cart_items.find(params[:id])
      @cart_item.destroy
      redirect_to cart_items_path, notice: 'Item removed from cart.'
    end
  
    private
  
    def cart_item_params
      params.require(:cart_item).permit(:product_name, :price, :image)
    end
  end
  
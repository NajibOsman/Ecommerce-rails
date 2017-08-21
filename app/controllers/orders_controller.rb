class OrdersController < ApplicationController
  def index
  end
  def show
    @order = Order.find(params[:id])
  end

  def cart_total
    total = 0
    cart.each do |product_id, details|
      if p = Product.find_by(id: product_id)
        total += p.price * details['quantity'].to_i
      end
    end
    total
  end

end

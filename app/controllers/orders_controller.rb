class OrdersController < ApplicationController
  def create
    order = Order.new
    order.user_id = 1
    carted = CartedProduct.where(user_id: 1, status: "carted")
    subtotal = 0
    carted.each do |item|
      if item.status == "carted"
        subtotal = subtotal + (item.product.price * item.quantity)
        item.status = "purchased"
      end
    end
    order.subtotal = subtotal
    order.tax = (subtotal * 0.09)
    order.total = subtotal + (subtotal * 0.09)
    order.save!
    render json: order
  end
end

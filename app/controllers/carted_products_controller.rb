class CartedProductsController < ApplicationController
  def create
    carted_product = CartedProduct.new
    carted_product.user_id = params[:user_id]
    carted_product.product_id = params[:product_id]
    carted_product.quantity = params[:quantity]
    carted_product.status = "carted"
    carted_product.save!
    render json: carted_product.as_json
  end

  def index 
    carted_products = CartedProduct.where(status: "carted")
    render json: carted_products.as_json
  end
end

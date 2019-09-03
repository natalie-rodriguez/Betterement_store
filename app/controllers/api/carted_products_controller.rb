class Api::CartedProductsController < ApplicationController
  
  def create

    @carted_product = CartedProduct.new(
      status: 'carted',
      user_id: current_user.id,
      #json web token

      product_id: params[:product_id],
      quantity: params[:quantity]
    )

    @carted_product.save!
    render 'show.json.jb'
  end
  def index
    p current_user.carted_products
    @carted_products = CartedProduct.where(user_id: current_user.id).where(status: 'carted')
    render 'index.json.jb'
  end

  def destroy
    @carted_product = CartedProduct.find_by(id: params[:id])
    @carted_product.status = "removed"
    @carted_product.save
    render json: {message: 'you have removed the item from your cart'}
  end
end
class Api::OrdersController < ApplicationController

  def index
    if current_user #if you are logged in
      @orders = current_user.orders
      render 'index.json.jb'
    else #if you are not logged in 
      render json: [], status: :unauthorized
    end
  end

  def show 
    @order =Order.find_by(id: params[:id])
    render 'show.json.jb'
  end 

  
  def create 
 # find all the carted products in the shopping cart for the user who is logged in JWT tocken 
    @carted_products = current_user.carted_products.where(status: 'carted')
    # how much will it cost 
    subtotal = 0
    tax = 0

    @carted_products.each do |carted_product|
      subtotal += carted_product.quantity * carted_product.product.price
      tax += carted_product.quantity * carted_product.product.tax
    end
    # add up all the cost * quantities for a subtotal
    total = subtotal + tax
   
    p total 

        @order = Order.new(
      subtotal: subtotal,
      tax: tax,
      total: total,
      user_id: current_user.id
    )
    @order.save

    @carted_products.update(status: 'purchased', order_id: @order.id)

    render 'show.json.jb'
  end
end




    # product = Product.find_by(id: params[:product_id])

    # calculated_subtotal = params[:quantity].to_i * product.price
    # calculated_tax = params[:quantity].to_i * product.tax
    # calculated_total = calculated_subtotal + calculated_tax

    # @order = Order.new(

    #   quantity: params[:quantity],
    #   subtotal: calculated_subtotal,
    #   tax: calculated_tax,
    #   total: calculated_total,
    #   user_id: current_user.id,
    #   product_id: params[:product_id]
    #   )



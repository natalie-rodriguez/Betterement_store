class Api::OrdersController < ApplicationController
  def create 
    @order = Order.new(
      quantity: 3,
      subtotal: 29.97,
      tax: 2.97,
      total: 33.00,
      user_id: 1,
      product_id: 1
      )
    @order.save 
    render 'show.json.jb'
  end
end

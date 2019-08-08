class Api::ProductsController < ApplicationController
  def index 
    @product = Product.first
    render "index.json.jb"
  end 
  def all_products 
    #comeback and rename ?
    @products = Product.all 
    render "all.json.jb"
  end 
end

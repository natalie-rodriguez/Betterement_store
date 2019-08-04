class Api::ProductsController < ApplicationController
  def index 
    @product = Product.first
    render "index.json.jb"
  end 
end

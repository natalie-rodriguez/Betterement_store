class Api::ProductsController < ApplicationController
  
  def index 
    @products = Product.all
    render "index.json.jb"
  end 

  def show 
    @product = Product.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    #make a brand new product
    @product = Product.new(
      name: params[:input_name],
      description: params[:input_description],
      price: params[:input_price],
      image_url: params[:input_image_url]

      )
  
   if @product.save
      render 'show.json.jb'
    else
      render 'errors.json.jb', status: :unprocessible_entity
    end

  def update
    #find in database then update 
    @product = Product.find_by(id: params[:id])
    p "here is the price"
    p params[:price]
    if @product.update(name: params[:name] || @product.name,
         price: params[:price] || @product.price,
         image_url: params[:image_url] || @product.image_url,
         description: params[:description] || @product.description
        )
      render 'show.json.jb'
    else
      render 'errors.json.jb', status: :unprocessible_entity
    end
  end
end

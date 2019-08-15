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
  
    @product.save
    render 'create.json.jb'
  end

  def update
    #find in database then update 
    @product = Product.find_by(id: params[:id])
    @product.update(
      name: params[:input_name] || @product.name,
      price: params[:input_price] || @product.price,
      image_url: params[:input_image_url] || @product.image_url,
      description: params[:input_description] || @product.description
    )
    render 'show.json.jb'
  end

  # def destroy
  #   the_id = Params[:id]
  #   render 'destroy.json.jb'
  # end 

end

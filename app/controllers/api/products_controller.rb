class Api::ProductsController < ApplicationController
  
    # before_action :authenticate_admin, except: [:index, :show]
  before_action :authenticate_admin, only: [:create, :update]
  # before_action :authenticate_user, only: [:show]

  def index
    if params[:search]
      @products = Product.where("name LIKE ?", "%#{params[:search]}%")
    else
      @products = Product.all
    end

    if params[:discount]
      @products = @products.where("price < ?", 10)
    end
      #params sort has the value of price 
    if params[:sort] && params[:sort_order] 
      #ascending this gets sorted in the database 
      @products = @products.order(params[:sort] => params[:sort_order])
    else
      @products = @products.order(:id => :asc)
    end
    # @products = Product.all

    # if params[:category]
    #   category = Category.find_by(name: params[:category])
    #   @products = category.products
    # end

    render 'index.json.jb'
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      # image_url: params[:image_url],
      description: params[:description]
    )
    if @product.save
      render 'show.json.jb'
    else
      render 'errors.json.jb', status: :unprocessible_entity
    end
  end

  def show
    @product = Product.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def update
    #find product and update
    @product = Product.find_by(id: params[:id])
    p "here is the price"
    p params[:price]
    if @product.update(name: params[:name] || @product.name,
         price: params[:price] || @product.price,
         # image_url: params[:image_url] || @product.image_url,
         description: params[:description] || @product.description
        )
      render 'show.json.jb'
    else
      render 'errors.json.jb', status: :unprocessible_entity
    end
  end
end

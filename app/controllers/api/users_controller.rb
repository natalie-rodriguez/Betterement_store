class Api::UsersController < ApplicationController
  #this is making a new user 
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      #saves as password digest 
      password_confirmation: params[:password_confirmation]
    )

    if user.save
      render json: {message: 'User created successfully'}, status: :created
      #happy path
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
      #sad path 
    end
  end
end

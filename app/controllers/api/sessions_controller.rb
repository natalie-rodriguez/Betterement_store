class Api::SessionsController < ApplicationController
  def create
    #this is how a customer logs in take the email and takes the password makes sure its good and then makes a JWT token and sends it back 

    p ENV["MASTER_KEY"]
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      jwt = JWT.encode(
        {
          user_id: user.id, # the data to encode
          exp: 24.hours.from_now.to_i # the expiration time
        },
        
        ENV["MASTER_KEY"], 'HS256'
        # the secret key
        # the encryption algorithm
      )
      render json: {jwt: jwt, email: user.email, user_id: user.id}, status: :created
    else
      p "this did not work" 

      render json: {}, status: :unauthorized
    end
  end
end


#take JWT from insomnia to log in
# look at application_controller.rb 
#customer session is 24 hours long 




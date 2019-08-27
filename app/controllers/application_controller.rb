class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

#current user take JWT or give you nil 

  def current_user
    
    auth_headers = request.headers['Authorization']
    if auth_headers.present? && auth_headers[/(?<=\A(Bearer ))\S+\z/]
      token = auth_headers[/(?<=\A(Bearer ))\S+\z/]
      #lines 6 -8 is the process of seeing who is logged in 
      begin
        #can't decode a password but we can decode a token 
        decoded_token = JWT.decode(
          token,
          ENV["MASTER_KEY"],
          true,
          { algorithm: 'HS256' }
        )
        User.find_by(id: decoded_token[0]["user_id"])
      rescue JWT::ExpiredSignature
        nil
      end
    end
  end

  helper_method :current_user
  #this will help see who is logged in 

  def authenticate_user
    unless current_user
      render json: {}, status: :unauthorized
    end
  end
end


#ability to access the methods current user and authenticate use. 
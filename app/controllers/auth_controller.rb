class AuthController < ApplicationController
  def create
    user = User.find_by(username: params[:username])
    is_authenticated = user.authenticate(params[:password]) if user

    if is_authenticated
      render json: { token: encode_token(user) }
    else
      render json: { errors: ["Wrong username/password. Please try again 👩🏽‍🎨"] }, status: :unprocessable_entity
    end
  end
end

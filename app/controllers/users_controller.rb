class UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end

  def create
    user = User.create(user_params)

    if user.valid?
      render json: { token: encode_token(user) }
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def profile
    render json: current_user
  end

  def show
    user = User.find_by(id: params[:id])
    render json: user
  end

  def my_fav_art
    # byebug
    fav_arts = User.find_by(id: params[:id]).fav_arts
    render json: fav_arts
  end


  private

  def user_params
    params.permit(:username, :name, :password)
  end
end

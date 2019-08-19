class FavArtsController < ApplicationController
  def index
    favArts = FavArt.all
    render json: favArts
  end

  def create
    # byebug
    favArt = FavArt.create(fav_art_params)
    render json: favArt
  end

  def my_fav_arts
    favArt = FavArt.find_by(id: params[:user_id])
  end


  def destroy
    favArt = FavArt.find_by(id: params[:id])
    favArt.destroy
    render json: favArt
  end

  private

  def fav_art_params
    params.permit(:user_id, :api_id, :keyword, :is_highlight, :img_url, :title, :artist, :date, :collection)
  end


end

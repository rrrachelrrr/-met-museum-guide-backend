class FavArtsController < ApplicationController
  def index
    favArts = FavArt.all
    # all_my_tags = favArts.map{ |art| art.fav_art_tag}
    render json: favArts, :include => :tags
  end

  def create
    # byebug
    favArt = FavArt.create(fav_art_params)
    render json: favArt
  end

  def destroy
    favArt = FavArt.find_by(id: params[:id])
    favArt.destroy
    render json: favArt
  end

  def my_tags
    # byebug
    favArt = FavArt.find_by(id: params[:id])
    my_tags = favArt.fav_art_tags.map{|tag| tag.tag.tag_name}
    render json: my_tags
  end

  private

  def fav_art_params
    params.permit(:user_id, :api_id, :keyword, :is_highlight, :img_url, :title, :artist, :date, :collection)
  end


end

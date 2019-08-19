class FavArtTagsController < ApplicationController
  def index
    fav_art_tags = FavArtTag.all
    render json: fav_art_tags
  end

  def show
    fav_art_tag = FavArt.find_by(id: params[:id])
    render json: fav_art_tag
  end

  def add_tag_to_art
    # p "nom nom nom"
    # cat = params[:cat_id]
    tag = Tag.find_or_create_by(tag_name: params[:tag_name])

    found_fav_art_tag = FavArt.find_or_create_by(user_id: current_user.id, cat_id: params[:cat_id])
    
    render json: found_fav_art_tag
  end

  def found
    render json: feed
  end

private

  def fav_art_params
    params.permit(:tag_id, :user_id)
  end

end

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
    # byebug
    tag = Tag.find_or_create_by(tag_name: params[:tag])

    fav_art_tag = FavArtTag.find_or_create_by(tag_id: tag.id, fav_art_id: params[:art_id])

    render json: fav_art_tag
  end

  def create
    fav_art_tag = FavArtTag.create(fav_art_params)
    render json: fav_art_tag
  end

  # def display_names
  #   byebug
  #   fav_art_tag = FavArtTag.find(id: params[:id])
  #   fav_art_tag.tag.name
  # end

private

  def fav_art_params
    params.permit(:tag_id, :user_id)
  end

end

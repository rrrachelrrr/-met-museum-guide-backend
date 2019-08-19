class TagsController < ApplicationController
  def index
    tags = Tag.all
    render json: tags
  end

  def create
    tag = Tag.create(tag_params)
    render json: tag
  end

  def new_tag
    tag = Tag.find_or_create_by(tag_name: params[:tag_name])
    render json: tag
  end


  private

  def tag_params
    params.permit(:tag_name)
  end


end

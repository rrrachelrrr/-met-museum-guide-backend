class ArtsController < ApplicationController
  def index
    arts = Art.all
    render json: arts
  end

  def add_art
    p "one art please"
    # cat = params[:cat_id]
    # one_art = Art.find_or_create_by(api_id: ?? )

    # render json: one_art
  end


end

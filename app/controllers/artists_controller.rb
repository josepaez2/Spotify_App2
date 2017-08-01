class ArtistsController < ApplicationController
  def index
    @artists = Artist.all 
  end

  def show
      @artist = Artist.includes(:albums, :songs).find(params[:id])
  end

  def new
  end

  def edit
  end

  def destroy
  end
end

class Api::ArtistsController < ApplicationController

  def index
    artists = Artist.all
    render status: 200, json: artists
  end

  def show
    artist = Artist.find(params[:id])
    render status: 200, json: artist
  end

  private
  def artist_params
    params
      .require(:artist)
      .permit(
        :name, :genre
      )
  end
end

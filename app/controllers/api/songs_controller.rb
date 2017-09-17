class Api::SongsController < ApplicationController
skip_before_action :verify_authenticity_token

  def index
    artist = Artist.find(params[:artist_id])
    songs = artist.songs
    render status: 200, json: songs
  end

  def show
    artist = Artist.find(params[:artist_id])
    song = artist.songs.find(params[:id])
    render status: 200, json: song
  end

  def create
    artist = Artist.find(params[:artist_id])
    song = artist.songs.build(song_params)
    if song.save
      render status: 201, json: song
    else
      render status: 422, json: {
        errors: song.errors
      }.to_json
    end
  end

  def destroy
    @artist = Artist.find(params[:artist_id])
    song = Song.find(params[:id])
    song.destroy

    respond_to do |format|
        format.html { redirect_to artist_path(@artist), notice: 'Song successfully deleted' }
        format.json { render status: 200, location: @artist }
    end
  end

  def update
    song = Song.find(params[:id])
    if song.update(song_params)
      render status: 200, json: {
        message: "Song successfully updated",
        song: song
      }.to_json
    else
       render status: 422, json: {
        message: "The song could not be updated",
        errors: song.errors
      }.to_json
    end
  end

  private
  def song_params
    params
      .require(:song)
      .permit(
        :name, :genre, :release_date, :length, :artist_id
      )
  end
end

class Api::SongsController < ApplicationController

  def index
    songs = Song.all
    render status: 200, json: songs
  end

  def show
    song = Song.find(params[:id])
    render status: 200, json: song
  end

  def create
    song = song.build(song_params)
    if song.save
      render status: 201, json: song
    else
      render status: 422, json: {
        errors: song.errors
      }.to_json
    end
  end

  def destroy
    song = Song.find(params[:id])
    song.destroy

    render status: 200, json: {
      message: "Song successfully deleted"
    }.to_json
  end

  # def update
  #   song = Song.find(params[:id])
  #   if song.update(song_params)
  #     render status: 200, json: {
  #       message: "Song successfully updated",
  #       song: song
  #     }.to_json
  #   else
  #      render status: 422, json: {
  #       message: "The song could not be updated",
  #       errors: song.errors
  #     }.to_json
  #   end
  # end

  private
  def song_params
    params
      .require(:song)
      .permit(
        :name, :genre, :release_date, :length, :artist_id
      )
  end
end

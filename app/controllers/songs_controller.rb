class SongsController < ApplicationController

 # before_action :find_function, only [:show, :edit,:update]

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(allow_params)
    redirect_to songs_path
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
    @song.update(allow_params)
  end

private

  def allow_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

  def find_function
    @song = Song.find(params[:id])
  end
end

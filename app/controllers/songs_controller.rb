class SongsController < ApplicationController
    def index 
        @songs = Song.all
    end
    
    def show
        @song = Song.find(params[:id])
        @artist = @song.artist
        @genre = @song.genre
    end

    def new 
        @song = Song.new
    end

    def create 
        @song = Song.new(allowed_params)
        @song.save
        redirect_to song_path(@song)
    end

    def edit
        @song = Song.find(params[:id])
    end

    def update
        @song = Song.find(params[:id])
        @song = Song.update(allowed_params)
        redirect_to song_path(@song)
    end

    private

    def allowed_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end
end

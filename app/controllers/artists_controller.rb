class ArtistsController < ApplicationController
    
  def new
    @artist = Artist.new
end

def index
    @artists = Artist.all
end

def show
    @artist = Artist.find(params[:id])
   # @genre = Genre.find(params[:id])
end

def edit
  @artist = Artist.find(params[:id])
  @artist.update(allowed_params)
  redirect_to artist_path(@artist)
end

def create
    @artist = Artist.create(allowed_params)
    redirect_to artist_path(@artist)
end

private

def allowed_params
    params.require(:artist).permit(:name, :bio, )
end

end

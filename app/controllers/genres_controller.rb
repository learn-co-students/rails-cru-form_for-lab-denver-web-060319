class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(allowed_params)
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = Genre.find(params[:id])
    @genre = Genre.update(allowed_params)
    redirect_to genre_path(@genre)
  end

  def show
    @genre = Genre.find(params[:id])
  end
private
  def allowed_params
    params.require(:genre).permit(:name)
  end

end

class GenresController < ApplicationController
    def index 
        @genres = Genre.all
    end

    def show
        @genre = Genre.find(params[:id])
    end

    def new 
        @genre = Genre.new
    end

    def create
        @genre = Genre.new(allowed_params)
        @genre.save
        redirect_to genres_path
    end

    def edit 
        @genre = Genre.find(params[:id])
    end

    def update
        @genre = Genre.find(params[:id])
        @genre = Genre.update(allowed_params)
        redirect_to genre_path
    end

    private

    def allowed_params
        params.require(:genre).permit(:name)
    end
end

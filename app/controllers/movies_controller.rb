class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if movie.save
      redirect root_path
    else
      render 'new'
    end
  end

  def show
    @movie = Movie.findby(:id)
  end

  private
  def movie_params
   params.require(:movie).permit(:title, :summary, :youtube_embed_id, :thumbnail)
  end
end

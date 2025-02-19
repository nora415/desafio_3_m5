class MoviesController < ApplicationController
  def index
    @movie = Movie.all
  end

  def create
    @movie = Movie.new(movies_params)
    if @movie.save
      redirect_to movies_index_path
      else
      render :new
      end
  end

  def new
    @movie = Movie.new
  end

  def movies_params
    params.require(:movie).permit(:name,:synopsis,:director)
  end
  end
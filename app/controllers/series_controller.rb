class SeriesController < ApplicationController
  def index
    @serie = Series.all
  end

  def create
    @Serie = Series.new(Series_params)
    if @Serie.save
      redirect_to movies_index_path
      else
      render :new
      end
  end

  def new
    @serie = Series.new
  end

  def Serie_params
    params.require(:Serie).permit(:name,:synopsis,:director)
  end

end
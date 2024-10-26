class DocumentaryFilmsController < ApplicationController
  def index
      @DocumentaryFilm = DocumentaryFilm.all
    end
  
    def create
      @DocumentaryFilm = DocumentaryFilm.new(documentaryFilms_params)
      if @DocumentaryFilm.save
        redirect_to movies_index_path
        else
        render :new
        end
    end
  
    def new
      @DocumentaryFilm = DocumentaryFilm.new
    end
  
    def documentaryFilms_params
      params.require(:documentary_film).permit(:name,:synopsis,:director)
    end
  end
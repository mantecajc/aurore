class SongsController < ApplicationController
  def index

  end

  def new
  end

  def create
    @song = Song.new(article_params)

    @song.save
    redirect_to @song
  end

  private
    def article_params
      params.require(:song).permit(:title, :description)
    end
end

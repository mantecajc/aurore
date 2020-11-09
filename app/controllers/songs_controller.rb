class SongsController < ApplicationController
  def index
    @songs = Song.all.order("created_at DESC")
  end
  
  def new
    @song = Song.new
    @song.iframes.build
  end

  def create
    @song = Song.new(song_params)

    @song.save
    redirect_to @song
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])

    if @song.update(song_params)
      redirect_to @song
    else
      render 'edit'
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy

    redirect_to songs_path
  end

  private
    def song_params
      params.require(:song).permit(:title, :description, :youtube_url, :soundcloud_url, :album_url, :image, iframes_attributes: [:id, :iframe_url, :_destroy])
    end
end

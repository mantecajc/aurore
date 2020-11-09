class VimeoController < ApplicationController
  def index
    @vimeos = Vimeo.all.order("created_at DESC")
  end

  def show
    @vimeo = Vimeo.find(params[:id])
  end

  def new
    @vimeo = Vimeo.new
  end

  def edit
    @vimeo = Vimeo.find(params[:id])
  end

  def create
    @vimeo = Vimeo.new(vimeo_params)

    @vimeo.save
    redirect_to @vimeo
  end

  def update
    @vimeo =Vimeo.find(params[:id])

    if @vimeo.update(vimeo_params)
      redirect_to @vimeo
    else
      render 'edit'
    end
  end

  def destroy
    @vimeo = Vimeo.find(params[:id])
    @vimeo.destroy
  end

  private
    def vimeo_params
      params.require(:vimeo).permit(:vimeo_url, :sound_design_id)
    end
end

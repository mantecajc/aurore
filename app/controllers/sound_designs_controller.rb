class SoundDesignsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  
  def index
    @sound_designs = SoundDesign.all.order("created_at DESC")
  end

  def new
    @sound_design = SoundDesign.new
    @sound_design.vimeos.build
  end

  def create
    @sound_design = SoundDesign.new(sound_design_params)

    @sound_design.save
    redirect_to @sound_design
  end

  def show
    @sound_design = SoundDesign.find(params[:id])
  end

  def edit
    @sound_design = SoundDesign.find(params[:id])
  end

  def update
    @sound_design = SoundDesign.find(params[:id])

    if @sound_design.update(sound_design_params)
      redirect_to @sound_design
    else
      render 'edit'
    end
  end

  def destroy
    @sound_design = SoundDesign.find(params[:id])
    @sound_design.destroy

    redirect_to sound_designs_path
  end

  private
    def sound_design_params
      params.require(:sound_design).permit(:title, :description, :image, vimeos_attributes: [:id, :vimeo_url, :_destroy])
    end
end

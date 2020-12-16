class StudiosController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @studios = Studio.all.order("created_at DESC")
  end

  def new
    @studio = Studio.new
  end

  def create
    @studio = Studio.new(studio_params)
    @studio.save
    redirect_to studios_path
  end

  def edit
    @studio = Studio.find(params[:id])
  end

  def update
    @studio = Studio.find(params[:id])
    if @studio.update(studio_params)
      redirect_to studios_path
    else
      render 'edit'
    end
  end

  private
    def studio_params
      params.require(:studio).permit(:main_description, :image)
    end
end

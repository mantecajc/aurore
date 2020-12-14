class HomesController < ApplicationController
  def index
    @homes = Home.all.order("created_at DESC")
  end

  def new
    @home = Home.new
  end

  def create
    @home = Home.new(home_params)

    @home.save
    redirect_to @home
  end

  def show
    @home = Home.find(params[:id])
  end

  def edit
    @home = Home.find(params[:id])
  end

  def update
    @home = Home.find(params[:id])

    if @home.update(home_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  private
    def home_params
      params.require(:home).permit(:main_description, :sub_description)
    end
end

class StartersController < ApplicationController
  def index
    @starters = Starter.all
  end

  def new
    @starters = Starter.new
  end

  def create
    Starter.create(starter_params)
    redirect_to(starters_path)
  end

  def show
    @starter = Starter.find(params[:id])
  end

  def edit
    @starter = Starter.find(params[:id])
  end

  def update
    starter = Starter.find(params[:id])
    starter.update(starter_params)
    redirect_to(starters_path)
  end



  private
  def starter_params
    params.require(:starter).permit(:name, :description, :instructions, :image)
  end


end
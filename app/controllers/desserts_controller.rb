class DessertsController < ApplicationController
  def index
    @desserts = Dessert.all
  end

  def new
    @desserts = Dessert.new
  end

  def create
    Dessert.create(dessert_params)
    redirect_to(desserts_path)
  end

  def show
    @dessert = Dessert.find(params[:id])
  end

  def edit
    @dessert = Dessert.find(params[:id])
  end

  def update
    dessert = Dessert.find(params[:id])
    dessert.update(dessert_params)
    redirect_to(desserts_path)
  end

  def destroy
    dessert = Dessert.find(params[:id])
    dessert.destroy
    redirect_to(desserts_path)
  end


  private
  def dessert_params
    params.require(:dessert).permit(:name, :description, :instructions, :image)
  end


end
class MainsController < ApplicationController
  def index
    @mains = Main.all
  end

  def new
    @mains = Main.new
  end

  def create
    Main.create(main_params)
    redirect_to(mains_path)
  end

  def show
    @main = Main.find(params[:id])
  end

  def edit
    @main = Main.find(params[:id])
  end

  def update
    main = Main.find(params[:id])
    main.update(main_params)
    redirect_to(mains_path)
  end

  def destroy
    main = Main.find(params[:id])
    main.destroy
    redirect_to(mains_path)
  end


  private
  def main_params
    params.require(:main).permit(:name, :description, :instructions, :image)
  end


end
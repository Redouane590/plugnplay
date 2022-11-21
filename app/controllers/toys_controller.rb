class ToysController < ApplicationController
  def index
    @toys = Toy.all
  end

  def new
    @toy = Toy.new
  end

  def create
    @toy = Toy.new(toy_params)
    @toy.save
    redirect_to toys_path(@toy)
  end

  def edit
    @toy = Toy.find(params[:id])
  end

  def update
    @toy = Toy.find(params[:id])
    @toy.update(toy_params)
  end

  def destroy
    @toy = Toy.find(params[:id])
    @toy.destroy
    redirect_to toys_path(@toy)
  end

  private

  def toy_params
    params.require(:toy).permit(:name)
  end
end

class BoatsController < ApplicationController
  def index
    @boats = policy_scope(Boat)
  end

  def show
    @booking = Booking.new
    @boat = Boat.find(params[:id])
    authorize @boat
  end

  def new
    @boat = Boat.new
    authorize @boat
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user
    if @boat.save
      redirect_to boats_path(@boat)
    else
      render :new, status: :unprocessable_entity
    end
    authorize @boat
  end

  def edit
    @boat = Boat.find(params[:id])
    authorize @boat
  end

  def update
    @boat = Boat.find(params[:id])
    if @boat.update(boat_params)
      redirect_to boat_path(@boat)
    else
      render :new, status: :unprocessable_entity
    end
    authorize @boat
  end

  def destroy
    @boat = Boat.find(params[:id])
    @boat.destroy
    redirect_to boats_path
    authorize @boat
  end

  private

  def boat_params
    params.require(:boat).permit(:title, :description, :photo_url, :price, :category, :address)
  end
end

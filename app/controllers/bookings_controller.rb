class BookingsController < ApplicationController
  def new
    @boat = Boat.find(params[:boat_id])
    @booking = Booking.new
  end

  def create
    @boat = Boat.find(params[:boat_id])
    @booking = Booking.new(booking_params)
    @booking.boat = @boat

    if @booking.save
      redirect_to boat_path(@boat)
    else
      render :new, status: :unprocessable_entity
    end
  end
  def show
    @booking = Booking.find(params[:id])
    @boat = @booking.boat
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to boats_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :boat_id, :status)
  end
end

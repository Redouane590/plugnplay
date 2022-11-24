class BookingsController < ApplicationController
  def new
    @boat = Boat.find(params[:boat_id])
    @booking = Booking.new
  end

  def create

    @boat = Boat.find(params[:boat_id])
    @booking = Booking.new(booking_params)
    @booking.boat = @boat
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render "/boats/show", status: :unprocessable_entity
    end
  end

  def show

    @booking = Booking.find(params[:id])
    authorize @booking
    @boat = @booking.boat
    @markers = [   {
      lat: @boat.latitude,
      lng: @boat.longitude,
      info_window: render_to_string(partial: "boats/info_window", locals: { boat: @boat })
    }]
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def accepted
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.status = "accepted"
    @booking.save
    redirect_to dashboard_path
    flash[:notice]="Booking accepté"

  end

  def declined
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.status = "declined"
    @booking.save
    redirect_to dashboard_path
    flash[:notice]="Booking decliné"
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to boats_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :boat_id, :status, :price)
  end
end

class BookingsController < ApplicationController
  def new
    @boat = Boat.find(params[:boat_id])
    @bookmark = Bookmark.new
  end

  def create
    @boat = Boat.find(params[:boat_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.boat = @boat
    if @bookmark.save
      redirect_to boat_path(@boat)
    else
      render :new, status: :unprocessable_entity
    end
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
    redirect_to bookings_path(@booking)
  end
end

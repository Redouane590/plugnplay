class BookingsController < ApplicationController
  def new
    @toy = Toy.find(params[:toy_id])
    @bookmark = Bookmark.new
  end

  def create
    @toy = Toy.find(params[:toy_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.toy = @toy
    if @bookmark.save
      redirect_to toy_path(@toy)
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

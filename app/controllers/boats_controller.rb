class BoatsController < ApplicationController
  def index

    @boats = policy_scope(Boat)
    if params[:query].present?
      @boats = Boat.search(params[:query])
    else
      @boats = Boat.all
    end
    @markers = @boats.geocoded.map do |boat|
      {
        lat: boat.latitude,
        lng: boat.longitude,
        info_window: render_to_string(partial: "info_window", locals: { boat: boat })

      }

    end
  end

  def show
    @booking = Booking.new
    @boat = Boat.find(params[:id])
    authorize @boat
    @booked_dates = @boat.bookings.map do |booking|
      { from: booking.start_date, to: booking.end_date }
    end
  end

  def new
    @boat = Boat.new
    authorize @boat
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user
    if @boat.save
      redirect_to boat_path(@boat)
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
    params.require(:boat).permit(:title, :description, :photo_url, :price, :category, :address, photos: [])
  end
end

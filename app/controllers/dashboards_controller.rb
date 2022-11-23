class DashboardsController < ApplicationController
  def show
    @my_boats = current_user.boats
    @my_bookings = current_user.bookings
    authorize current_user, policy_class: DashboardPolicy
  end
end

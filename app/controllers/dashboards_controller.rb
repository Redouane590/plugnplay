class DashboardsController < ApplicationController
  def dashboard
    @user = User.find(params[:id])
    @boats = current_user.boats
  end
end

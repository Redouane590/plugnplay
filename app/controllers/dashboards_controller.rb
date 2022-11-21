class DashboardsController < ApplicationController
  def dashboard
    @user = User.find(params[:id])
    @toys = current_user.toys
  end
end

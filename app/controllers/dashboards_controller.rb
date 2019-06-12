class DashboardsController < ApplicationController
  def show
    @user = current_user
    @coupons_import = CouponsImport.new
  end
end

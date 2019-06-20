class DashboardsController < ApplicationController
  def show
    @coupons_import = CouponsImport.new
    if params[:query].present?
      @coupons = current_user.coupons.order(:expiration_date).global_search(params[:query])
    else
      @coupons = current_user.coupons.order(:expiration_date)
    end
  end
end

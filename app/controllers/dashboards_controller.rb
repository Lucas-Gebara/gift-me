class DashboardsController < ApplicationController
  def show
    @coupons_import = CouponsImport.new
    if params[:query].present?
      @coupons = Coupon.global_search(params[:query])
    else
      @coupons = current_user.coupons
    end
  end
end

class CouponsImportsController < ApplicationController
  def new
    @coupons_import = CouponsImport.new
  end

  def create
    @coupons_import = CouponsImport.new(coupons_import_params)
    @coupons_import.user = current_user
    if @coupons_import.save
      flash[:success] = "You have imported #{view_context.pluralize(@coupons_import.coupons.count, 'coupon')}"
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def coupons_import_params
    params.fetch(:coupons_import, {}).permit(companies: [])
  end
end

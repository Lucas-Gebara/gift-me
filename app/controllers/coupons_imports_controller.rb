class CouponsImportsController < ApplicationController
  def new
    @coupons_import = CouponsImport.new
  end

  def create
    if params[:import_type] == "email"
      call_coupon_faker(coupons_import_params[:companies])
      redirect_to dashboard_path
    else
      @coupons_import = CouponsImport.new(coupons_import_params)
      @coupons_import.user = current_user
      if @coupons_import.save
        redirect_to dashboard_path
      else
        render :new
      end
    end
  end

  private

  def call_coupon_faker(companies_ids)
    @service = CouponsFakerService.new
    coupons = []
    companies_ids.each do |company_id|
      coupons << @service.import(company_id)
    end
    coupons.flatten.each do |cp|
      cp.user = current_user
      cp.save
    end
  end


  def coupons_import_params
    params.fetch(:coupons_import, {}).permit(:import_type, companies: [])
  end
end

class CouponsController < ApplicationController
  def new
    @user = current_user
    @coupon = Coupon.new
  end

  def create
    @coupon = Coupon.new(coupon_params)
    @coupon.user = current_user
    if @coupon.save
      redirect_to dashboard_path
    else
      raise
      render :new
    end
  end

  def destroy
    @coupon = Coupon.find(params[:id])

    @coupon.destroy
    redirect_to dashboard_path
  end

  private

  def coupon_params
    params.require(:coupon).permit(:description, :expiration_date, :code, :company_id)
  end
end

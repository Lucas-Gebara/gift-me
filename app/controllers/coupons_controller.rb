class CouponsController < ApplicationController
  def new
    @user = current_user
    @coupon = Coupon.new
  end

  def create
    @user = current_user
    @coupon = Coupon.new(coupon_params)
    if @coupon.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def coupon_params
    params.require(:coupon).permit(:description, :expiration_date, :code)
  end
end

class IgCouponService
  include HTTParty
  base_uri 'https://www.ig.com.br/cupons'

  def parse_coupons(path)
    doc = self.class.get("/#{path}")
    coupon_elements = Nokogiri::HTML(doc).search('.vouchers-list .igbr-new-voucher.secondary')
    coupon_elements.map { |element| element.attr("id").gsub("item-", "") }
  end

  def coupon(coupon_id)

    json = self.class.get("/ajax/voucherpopup?id=#{coupon_id}")
    voucher = json.dig("voucher")

    companies = Company.where("name ILIKE ?", "%#{voucher.dig("retailer")}%")

    Coupon.new(
      code: voucher.dig("code"),
      description: voucher.dig("title"),
      company: companies.first,

      expiration_date: Date.today + voucher.dig("expireDiff")
    )
  end

  def coupons(coupons_ids_array)
    coupons_ids_array.map do |coupon_id|
      coupon(coupon_id)
    end
  end

  COUPON_PATHS = {
    "ifood" => "cupom-desconto-ifood",
    "rappi" => "cupom-rappi",
    "ubereats" => "cupom-uber-eats"
  }
  def import(company_id)
    company = Company.find(company_id)
    coupons_ids = parse_coupons(COUPON_PATHS[company.slug])
    coupons(coupons_ids)
  end
end

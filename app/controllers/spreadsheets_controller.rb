class SpreadsheetsController < ApplicationController
  def index
    @title = "Spread Sheet Manager"
    @affiliate = Affiliate.new
    @customer_detail = CustomerDetail.new
    @customers_summary = CustomersSummary.new
    @deal_detail = DealDetail.new
    @merchant_information = MerchantInformation.new
    @promotion = Promotion.new
  end
end

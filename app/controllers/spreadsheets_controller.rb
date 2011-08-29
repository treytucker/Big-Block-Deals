class SpreadsheetsController < ApplicationController
  
  def index
    @title = "Spreadsheet Manager"
    @affiliate = nil #Affiliate.last
    @customer_detail = nil #CustomerDetail.last
    @customers_summary = nil# CustomersSummary.last
    @deal_detail = nil #DealDetail.last
    @merchant_information = nil# MerchantInformation.last
    @promotion = Promotion.last
  end
  
  def show
    if @model = ActiveRecord.const_get(params[:id])
      @title = "Spreadsheet | #{params[:id]}"
      @spreadsheet = @model.all
    else
      redirect_to :index, :notice => "This page does not exist"
    end
    rescue
      redirect_to spreadsheets_path, :notice => "This page does not exist"
  end
  # 
  # def update
  #   @model = ActiveRecord.const_get(params[:id])
  #   @title = "Upload a Spreadsheet"
  #   @spreadsheet = @model.new
  #   rescue
  #     redirect_to spreadsheets_path, :notice => "This page does not exist"
  #   end

  def new
    @spreadsheet  = Spreadsheet.new
  end

  def create
    @spreadsheet = Spreadsheet.new(params[:spreadsheet])
    if @spreadsheet.valid?
      @spreadsheet.save
      Delayed::Job.enqueue(CsvImportingJob.new(@spreadsheet.id))
      redirect_to spreadsheets_path
    else
      render "new"
    end
  end
end

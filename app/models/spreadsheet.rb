class Spreadsheet < ActiveRecord::Base
  has_attached_file :csv_spreadsheet
  validates_attachment_presence :csv_spreadsheet
  
  def self.gather_thine_spreadsheets
    spreadsheets = ["Affiliate", "CustomerDetail", "CustomersSummary", "DealDetail", "MerchantInformation", "Promotion"]
  end
  
end

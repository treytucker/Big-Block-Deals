class Spreadsheet < ActiveRecord::Base
  has_attached_file :csv_spreadsheet
  validates_attachment_presence :csv_spreadsheet
  
end

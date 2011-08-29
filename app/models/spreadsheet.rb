class Spreadsheet < ActiveRecord::Base
  has_attached_file :csv_spreadsheet
  
end

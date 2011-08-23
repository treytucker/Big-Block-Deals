class Promotion < ActiveRecord::Base
end

# == Schema Information
#
# Table name: promotions
#
#  id             :integer         not null, primary key
#  promotion_name :string(255)
#  company_name   :string(255)
#  merchant_name  :string(255)
#  code           :string(255)
#  start          :string(255)
#  end            :string(255)
#  discount       :decimal(, )
#  total_used     :integer
#  max_total_used :integer
#  created_at     :datetime
#  updated_at     :datetime
#
# require 'fastercsv'
# FasterCSV.foreach("#{RAILS_ROOT}/file.csv") do |row|
#   record = Bcode.new(
#   :term_no => row[0],
#   :standard_term => row[1]
#   )
#   record.save
# end

# CSV.foreach("#{RAILS_ROOT}/public/promotion.csv") do |row|
#   record = Promotion.new(
#     :promotion_name => row[0],
#     :company_name => row[1],
#     :merchant_name => row[2],
#     :code => row[3],
#     :start => row[4],
#     :end => row[5],
#     :discount => row[6],
#     :total_used => row[7],
#     :max_total_used => row[8]
#   )
#   record.save
# end
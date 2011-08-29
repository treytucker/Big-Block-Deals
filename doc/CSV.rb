CSV.foreach("#{RAILS_ROOT}/public/csv/promotion.csv") do |row|
  row
end

arr_of_arrs = CSV.read("#{RAILS_ROOT}/public/csv/promotion.csv")
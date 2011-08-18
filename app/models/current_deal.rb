class CurrentDeal < ActiveRecord::Base
  has_many :quotes, :as => :quotable
  has_many :widgets, :as => :wedgetable

end

# == Schema Information
#
# Table name: current_deals
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  created_at :datetime
#  updated_at :datetime
#


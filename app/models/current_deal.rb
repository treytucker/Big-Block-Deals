class CurrentDeal < ActiveRecord::Base
  has_many :widgets, :as => :wedgetable

end


# == Schema Information
#
# Table name: current_deals
#
#  id :integer         not null, primary key
#


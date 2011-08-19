class RecentDeal < ActiveRecord::Base
  has_many :widgets, :as => :wedgetable


end


# == Schema Information
#
# Table name: recent_deals
#
#  id :integer         not null, primary key
#


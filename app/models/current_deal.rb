class CurrentDeal < ActiveRecord::Base
validates_presence_of :title

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


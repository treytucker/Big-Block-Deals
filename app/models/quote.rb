# == Schema Information
# Schema version: 20110713191155
#
# Table name: quotes
#
#  id         :integer         not null, primary key
#  author     :string(255)
#  quote      :text
#  created_at :datetime
#  updated_at :datetime
#

class Quote < ActiveRecord::Base
end

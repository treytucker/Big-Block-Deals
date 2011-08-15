class ForBusiness < ActiveRecord::Base
  validates_presence_of :title, :header, :content
  has_many :quotes, :as => :quotable
  has_many :widgets, :as => :wedgetable
  
end

# == Schema Information
#
# Table name: for_businesses
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  header     :string(255)
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#


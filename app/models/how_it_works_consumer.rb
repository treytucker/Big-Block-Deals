class HowItWorksConsumer < ActiveRecord::Base
  validates_presence_of :title, :header_1, :content_1, :header_2, :content_2, :header_3, :content_3, :header_4, :content_4
  has_many :quotes, :as => :quotable
  has_many :widgets, :as => :wedgetable

end

# == Schema Information
#
# Table name: how_it_works_consumers
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  header_1   :string(255)
#  content_1  :text
#  header_2   :string(255)
#  content_2  :text
#  header_3   :string(255)
#  content_3  :text
#  header_4   :string(255)
#  content_4  :text
#  created_at :datetime
#  updated_at :datetime
#


class PrivacyPolicy < ActiveRecord::Base
  validates_presence_of :content
  has_many :widgets, :as => :wedgetable

end


# == Schema Information
#
# Table name: privacy_policies
#
#  id      :integer         not null, primary key
#  content :text
#


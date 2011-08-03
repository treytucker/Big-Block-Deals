=begin
  TODO Add validations
=end
class PrivacyPolicy < ActiveRecord::Base
  validates_presence_of :title, :content
end

# == Schema Information
#
# Table name: privacy_policies
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#


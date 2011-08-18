class Contact < ActiveRecord::Base
  validates_presence_of :header_1, :link_1, :header_2, :link_2, :number
  has_many :quotes, :as => :quotable
  has_many :widgets, :as => :wedgetable
  
end
=begin
  TODO Fix the address field. Should be broken up
=end
# == Schema Information
#
# Table name: contacts
#
#  id             :integer         not null, primary key
#  title          :string(255)
#  header_1       :string(255)
#  link_1         :string(255)
#  header_2       :string(255)
#  link_2         :string(255)
#  number         :string(255)
#  address_name   :string(255)
#  address_street :string(255)
#  city           :string(255)
#  state          :string(255)
#  zip_code       :integer
#


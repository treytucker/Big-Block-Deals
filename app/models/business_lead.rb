class BusinessLead < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :email, :phone, :company, :website, :address, :city, :state, :zip_code, :message
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  validates_format_of :zip_code, :with => /[0-9]+$/, :on => :create, :message => "has to be digits"
  validates_format_of :test, :with => /(^seven$|^7$)/, :on => :create, :message => "Evidently you are NOT human."
  
  attr_accessor :test

end

# == Schema Information
#
# Table name: business_leads
#
#  id         :integer         not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  email      :string(255)
#  phone      :string(255)
#  company    :string(255)
#  website    :string(255)
#  address    :string(255)
#  city       :string(255)
#  state      :string(255)
#  zip_code   :integer
#  message    :text
#  created_at :datetime
#  updated_at :datetime
#


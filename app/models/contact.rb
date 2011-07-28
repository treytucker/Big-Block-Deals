class Contact < ActiveRecord::Base
end

# == Schema Information
#
# Table name: contacts
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  header_1   :string(255)
#  link_1     :string(255)
#  header_2   :string(255)
#  link_2     :string(255)
#  number     :string(255)
#  address    :text
#  created_at :datetime
#  updated_at :datetime
#

=begin
  TODO Fix the address field. Should be broken up
=end
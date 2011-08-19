=begin
  TODO Add Associations.
  TODO Add in validations for the quote length
=end
class Quote < ActiveRecord::Base
  validates_presence_of :author, :words_of_wisdom
  
  def self.all_active
    @quotes = self.where("? = active", true)
  end
end



# == Schema Information
#
# Table name: quotes
#
#  id              :integer         not null, primary key
#  author          :string(255)
#  words_of_wisdom :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  active          :boolean
#


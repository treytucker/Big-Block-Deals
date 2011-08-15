=begin
  TODO Add Associations.
=end
class Quote < ActiveRecord::Base
  validates_presence_of :author, :words_of_wisdom
  # has_and_belongs_to_many :about_us, :join_table => "about_uses_quotes"
  belongs_to :quotable, :polymorphic => true
  
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
#  quotable_id     :integer
#  quotable_type   :string(255)
#


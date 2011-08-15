=begin
  TODO Add validations
=end
class Quote < ActiveRecord::Base
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


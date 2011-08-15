=begin
  TODO Build the custom validations for this. Needs to have one of them?
    Talk to try to make sure. 

=end

class Widget < ActiveRecord::Base
  belongs_to :widgetable, :polymorphic => true

end

# == Schema Information
#
# Table name: widgets
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  text       :text
#  link       :string(255)
#  created_at :datetime
#  updated_at :datetime
#


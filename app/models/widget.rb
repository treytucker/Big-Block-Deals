=begin
  TODO Build the custom validations for this. (Contact me if you need help, i've got some examples in another project)

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


=begin
  THOUGHTS some = BasicsController.new.about_uses; ActiveRecord.const_get(some).first;
=end

class AboutUs < ActiveRecord::Base
  validates_presence_of :title, 
                        :header_1, 
                        :content_1, 
                        :header_2, 
                        :content_2, 
                        :header_3, 
                        :content_3, 
                        :tag_line

end

# == Schema Information
#
# Table name: about_us
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  header_1   :string(255)
#  content_1  :text
#  header_2   :string(255)
#  content_2  :text
#  header_3   :string(255)
#  content_3  :text
#  tag_line   :string(255)
#  created_at :datetime
#  updated_at :datetime
#


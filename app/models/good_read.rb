class GoodRead < ActiveRecord::Base
  attr_accessible :post, :title, :catagory_id, :image, :image_delete
  validates_presence_of :post, :title, :catagory, :image, :message => "can't be blank"
  belongs_to :catagory
  

# Relates to the images
  has_attached_file :image, :styles => { :thumb => "100x100>", :medium => "315x315>" }
  # validates_attachment_size :image, :less_than => 5.megabytes
  # validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']
  #
    before_save :destroy_image?
    
    def image_delete
      @image_delete ||= "0"
    end

    def image_delete=(value)
      @image_delete = value
    end

  private
    def destroy_image?
      self.image.clear if @image_delete == "1"
    end
end
# == Schema Information
#
# Table name: good_reads
#
#  id                 :integer         not null, primary key
#  title              :string(255)
#  post               :text
#  created_at         :datetime
#  updated_at         :datetime
#  catagory_id        :integer
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#


class GoodRead < ActiveRecord::Base
  validates_presence_of :post, :title, :catagory, :message => "can't be blank"
  belongs_to :catagory

# Relates to the images
  has_attached_file :image, :styles => { :thumb => "100x100>", :medium => "315x315>" }
  # validates_attachment_size :image, :less_than => 5.megabytes
  # validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']
  # 
  
end
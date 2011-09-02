class Widget < ActiveRecord::Base
  has_attached_file :widget_image, :styles => { :shrunk => "220x220>", :medium => "315x315>" }
  validates_attachment_size :widget_image, :less_than => 5.megabytes
  validates_attachment_content_type :widget_image, :content_type => ['image/jpeg', 'image/png']
  
  belongs_to :widgetable, :polymorphic => true
end

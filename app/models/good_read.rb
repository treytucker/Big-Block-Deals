class GoodRead < ActiveRecord::Base
  validates_presence_of :post, :title, :message => "can't be blank"
  belongs_to :catagory
end

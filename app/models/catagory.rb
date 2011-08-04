class Catagory < ActiveRecord::Base
  validates_presence_of :name
  has_many :good_reads
end

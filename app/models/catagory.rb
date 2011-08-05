class Catagory < ActiveRecord::Base
  validates_presence_of :name
  has_many :good_reads
  
  def self.list_names()
    @all = self.find(:all)
    hash = {}
    @all.each do |f|
      hash.merge!(f.name => f.id)
    end
    return hash
  end

end
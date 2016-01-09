class Property < ActiveRecord::Base
  has_attached_file :document, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :document, :content_type => ["application/msword","text/plain",'application/pdf'], :message => 'Only PDF, WORD or TEXT files are allowed. '
  validates :title,:document,:presence => :true
  has_many :images,:dependent => :destroy
  accepts_nested_attributes_for :images, :allow_destroy => true, :reject_if=>:all_blank

end

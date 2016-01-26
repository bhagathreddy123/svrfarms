class Property < ActiveRecord::Base
  has_attached_file :document, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :document, :content_type => ["application/msword","text/plain",'application/pdf'], :message => 'Only PDF, WORD or TEXT files are allowed. '
  validates :title,:document,:presence => :true
  has_many :images,:dependent => :destroy
  accepts_nested_attributes_for :images, :allow_destroy => true, :reject_if=>:all_blank

  # acts_as_gmappable :check_process=> false, :msg => "Errrrrrrror"
 
  
   # after_validation :geocode
#   geocoded_by :address

# def address
#   [location, city, state].compact.join(', ')
# end  
  
  
# def gmaps4rails_address
#   "#{self.location}, #{self.city}"
# end

#   def gmaps4rails_infowindow
#     "<b>City:&nbsp;</b>#{self.city}<br /><b>Location:&nbsp;</b> #{self.location} <br /><a href='/home/land1?id=#{self.id}' class='btn'>Property</a>"
#   end



end

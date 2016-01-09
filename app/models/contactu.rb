class Contactu < ActiveRecord::Base
  validates :name,:email, :presence => :true
end

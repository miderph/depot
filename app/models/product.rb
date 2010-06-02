class Product < ActiveRecord::Base
  validates_presence_of :title,:desc,:img_url
  
end

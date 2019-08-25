class CategoryProduct < ApplicationRecord
  belongs_to :product 
  belongs_to :category 
#lower case and singular 
end

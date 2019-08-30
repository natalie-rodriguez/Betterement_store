class Order < ApplicationRecord
  # belongs_to :product 
  belongs_to :user
  has_many :carted_products 
  
  #this is saying just one product can be bought?

end

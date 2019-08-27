class Order < ApplicationRecord
  belongs_to :product 
  belongs_to :user
  #this is saying just one product can be bought?

end

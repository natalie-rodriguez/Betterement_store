class Product < ApplicationRecord
  #active record method 
  belongs_to :supplier 
  has_many :images


  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: {in: 10..500 }

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  def is_discounted?
    price < 10
  end

  def tax
    tax_rate = 0.09
    price * tax_rate
  end

  def total
    price + tax
  end

  # def image_url
  #   if images.length > 0
  #     return images[0].url
  #   else
  #     return "https://www.hutchinsontires.com/helpers/img/no_image.jpg"
  #   end
  # end
end


#api for coupons stripe
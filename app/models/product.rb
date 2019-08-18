class Product < ApplicationRecord
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
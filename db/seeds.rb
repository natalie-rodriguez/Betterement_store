# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 25.times do
#   product = Product.new(price: rand(50), name: FFaker::Product.product, description: FFaker::HipsterIpsum.paragraph)

#   product.save!
# end 

# image = Image.new(url: "https://www.westelm.com/weimgs/ab/images/wcm/products/201933/0005/faux-fiddle-leaf-fig-plant-1-c.jpg", product_id: 1)

#changing the pictures 

products = Product.all 
2.times do 
  products.each do |product|
    image = Image.new(url: FFaker::Image.url, product_id: products.sample.id)
    image.save!
  end
end 


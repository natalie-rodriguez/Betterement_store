# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


  product = Product.new(price: 95.00, name:'AGLAONEMA RED CLASSICO MINI TREND - NUTMEG', description:'The Aglaonema “Red” plant with unique beautiful leaf pattern is a great choice if you wish to add some living color to your interior. This plant is not just stunning but also an air purifier',image_url: "https://cdn.shopify.com/s/files/1/1025/1611/products/aglaonema-red-trend-nutmeg-planter_1200x.jpg?v=1562695059")
  product.save!


  #   product = Product.new(price:  85.00, name:'BELLA PALM CLASSICO 7" MINI TREND PEARL ROSE ', description:'Beautiful Bela Palm is potted in self-watering Classico mini planter. This arrangement is the part of our “Summer Punch” Limited Edition Collection. Elegant pearl rose planter color adds an instant joy and feeling of summer and love!', image_url: "https://cdn.shopify.com/s/files/1/1025/1611/products/bella-palm-trend-7_-pink-planter-01_1200x.jpg?v=1563372066")
  # product.save!

  #   product = Product.new(price:  85.00, name:'BELLA PALM CLASSICO MINI CHARCOAL METALLIC', description:'Beautiful palm with bright foliage and unique whimsical leaves.', image_url: "https://cdn.shopify.com/s/files/1/1025/1611/products/bella-palm-classico9-charcoal_1200x.jpg?v=1535902840")
  # product.save!

  #   product = Product.new(price:  125.00, name:'CASCADING POTHOS CILINDRO SUNSET ORANGE', description:'This plant reminds us of a waterfall and we love its cascading habit and very easy going character. Pothos is highly recommended as a very powerful air purifier. Cilindro planter allows you to gracefully display smaller plants on the floor without making them disappear under or behind furniture and eliminates a need to hunt for a plant stand to elevate plants for better enjoyment and visual effect.', image_url: "https://cdn.shopify.com/s/files/1/1025/1611/products/cascading-pothos-cilindro-orange-01_1200x.jpg?v=1562694504")
  # product.save!

  #   product = Product.new(price:  425.00, name:'MAJESTY PALM DELTA - WHITE', description:'Here is our Majesty Palm potted in Lechuza self-watering delta planter. Delta planter is the tallest in our collection and has a triangular shape which is perfect for displaying plants in corners or as a stand-alone centerpiece. Classic texture and lush, dark green foliage allow Majesty Palm to naturally fit into most decor styles. It is a great exotic addition to a big space that has bright and sunny light', image_url: "https://cdn.shopify.com/s/files/1/1025/1611/products/majesty-plam-delta-white_2000x.jpg?v=1566832880")

  # product.save!

  #  product = Product.new(price:  455.00, name: "BELLA PALM CARARO - WHITE", description:'Bella Palm potted in Lechuza self-watering Cararo planter. Set of a few plants potted in a modern, slick and elegant planter that has sturdy wheels and easy to move around. Full shape arrangement will work perfectly as a strong accent or a divider for a seating area. Bella Palm prefers medium to bright light and can enjoy direct sunlight as well.', image_url: "https://cdn.shopify.com/s/files/1/1025/1611/products/bella-palm-cararo-white_1200x.jpg?v=1566840186")
  # product.save!

  #   product = Product.new(price:  585.00, name:'IRON PLANT CARARO CHARCOAL METALLIC ', description:'Built-in sub-irrigation system (water your plant 3 times less often in comparison to regular pots). The planter is easy to move around, thanks to rollers. Made by Lechuza in Germany, shatterproof, 100% recyclable plastic.', image_url: "https://cdn.shopify.com/s/files/1/1025/1611/products/iron-plant-cararo-charcoal_1200x.jpg?v=1557861449")
  # product.save!

  #   product = Product.new(price: 85.00, name:'BELLA PALM CLASSICO" MINI TREND PEARL ROSE ', description:'Beautiful Bela Palm is potted in self-watering Classico mini planter. This arrangement is the part of our “Summer Punch” Limited Edition Collection. Elegant pearl rose planter color adds an instant joy and feeling of summer and love!', image_url: "https://cdn.shopify.com/s/files/1/1025/1611/products/bella-palm-trend-7_-pink-planter-01_1200x.jpg?v=1563372066")
  # product.save!

  #   product = Product.new(price: 65.00, name:'Lovely Lavender Medley', description:'Lovely memories are made with thoughtful gifts for the ones we care about. Our charming bouquet is loosely gathered with a medley of lavender & white blooms. Hand-designed inside a clear cylinder vase with cascading greenery all around, it’s a wonderful way to express the sentiments you have inside your heart.', image_url: "https://cdn1.1800flowers.com/wcsstore/Flowers/images/catalog/167530lx.jpg?height=558&width=510")
  # product.save!

# image = Image.new(url: "https://www.westelm.com/weimgs/ab/images/wcm/products/201933/0005/faux-fiddle-leaf-fig-plant-1-c.jpg", product_id: 1)

#changing the pictures 

# products = Product.all 
# 2.times do 
#   products.each do |product|
#     image = Image.new(url: FFaker::Image.url, product_id: products.sample.id)
#     image.save!
#   end
# end 


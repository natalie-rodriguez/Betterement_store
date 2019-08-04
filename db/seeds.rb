# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
product = Product.new(name:"Betterment Fold-over Beanie Black",price: 9.99, description: "Keep you ears warm while enjoying a cold winter day with this Betterment Fold-over Beanie.", image_url: "https://shop.googlemerchandisestore.com/store/20160512512/assets/items/images/GGOEGHPJ094299.jpg" )
product.save

product = Product.new(name:"Google Twill Cap Red",price: 11.99, description: "Show your Google spirit by wearing this Google Twill Cap", image_url: "https://shop.googlemerchandisestore.com/store/20160512512/assets/items/images/GGOEGHBJ101899.jpg" )
product.save
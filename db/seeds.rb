# db/seeds.rb

require 'faker'

# Create fake categories
categories = []
5.times do
  categories << Category.create(name: Faker::Lorem.word)
end

puts 'Fake categories created successfully!'

# Create fake products
products = []
20.times do
  products << Product.create(
    name: Faker::Commerce.product_name,
    image_url: Faker::LoremFlickr.image,
    description: Faker::Lorem.sentence,
    price: Faker::Commerce.price
  )
end

puts 'Fake products created successfully!'

# Associate products with categories
products.each do |product|
  rand(1..3).times do
    product.categories << categories.sample
  end
end

puts 'Associations between products and categories created successfully!'

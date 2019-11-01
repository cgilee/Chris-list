# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

raw = IO.read('db/data.json')
json = JSON.parse(raw)

json["counties"].each_pair do |county_name, cities|
  county = County.create(name:county_name)
  cities.each do |city|
    City.create(name:city, county_id:county.id)
  end
end

json["categories"].each_pair do |category_name, subcategories|
  category = Category.create(name:category_name)
  subcategories.each do |subcategory|
    Subcategory.create(name:subcategory, category_id:category.id)
  end
end

100.times do |post|
  Post.create({
    county_id: County.all.sample.id,
    city_id: City.all.sample.id,
    category_id: Category.all.sample.id,
    subcategory_id: Subcategory.all.sample.id,
    title: Faker::Commerce.product_name,
    price_cents: Faker::Number.between(from: 0, to: 5000),
    street_address: Faker::Address.street_address,
    city_or_province: Faker::Address.city,
    state: Faker::Address.state,
    zip: Faker::Address.zip_code,
    description: Faker::Lorem.paragraph(sentence_count: 23),
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email
  })
  Post.all.each do |post|
    number = Faker::Number.between(from: 1, to: 8);
    number.times do
      random = Faker::Number.between(from: 1, to: 500);
      Post.create({
      photos: post.photos.attach(io: File.open("db/photos/#{random}.png"), filename: "#{random}.png")
      })
    end
  end
end

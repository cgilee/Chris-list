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

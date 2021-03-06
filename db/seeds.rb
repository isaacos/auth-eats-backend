# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require './db/touchAPI.rb'


def dataSeeder(search_term)
  YelpApiAdapter.search(search_term).each do |restaurant|
    url = restaurant['url']
    image_url = restaurant['image_url']
    location = restaurant['location']['address1']
    category = restaurant['categories'][-1]['alias']
    category_list = []
    restaurant['categories'].each do |category|
      new_category = Category.find_or_create_by(name: category['alias'])
      category_list.push(new_category)

    end

    name = restaurant['name']
    phone = restaurant['phone']
    lat = restaurant['coordinates']['latitude']
    lng = restaurant['coordinates']['longitude']
    slug = restaurant['alias']
    new_restaurant = Restaurant.create(name: name, location: location, category: category, url: url, image_url: image_url, phone: phone, lat:lat, lng:lng, slug: slug)
    category_list.each do |category|
      CategoryRestaurant.create(category_id: category.id, restaurant_id: new_restaurant.id)
    end
  end
end

dataSeeder('japanese')
dataSeeder('chinese')
dataSeeder('italian')
dataSeeder('nepali')
dataSeeder('uzbek')
dataSeeder('turkish')
dataSeeder('thia')
dataSeeder('vietnamese')
dataSeeder('german')
dataSeeder('korean')
dataSeeder('mexican')
dataSeeder('ecuadorian')
dataSeeder('brazilian')
dataSeeder('ethiopian')

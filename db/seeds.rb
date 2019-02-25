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
    name = restaurant['name']
    phone = restaurant['phone']
    lat = restaurant['coordinates']['latitude']
    lng = restaurant['coordinates']['longitude']
    slug = restaurant['alias']
    Restaurant.create(name: name, location: location, category: category, url: url, image_url: image_url, phone: phone, lat:lat, lng:lng, slug: slug)
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

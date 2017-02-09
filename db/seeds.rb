# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number: "01 43 54 23 31",
    category:      "french"
  },
  {
    name:         "Hokkaido",
    address:      "4 rue Blainville 75005 Paris",
    phone_number: "01 43 54 23 41",
    category:     "japanese"
  },
  {
    name:         "Napoli",
    address:      "route de Suresnes 75016 Paris",
    phone_number: "01 43 54 23 51",
    category:     "italian"
  },
  {
    name:         "Shangai",
    address:      "rue Saint Maur 75016 Paris",
    phone_number: "01 43 54 23 61",
    category:     "chinese"
  },
  {
    name:         "Belge",
    address:      "rue Oberkamp 75011 Paris",
    phone_number: "01 43 54 23 71",
    category:     "belgian"
  }
]
restaurants_attributes.each { |params| Restaurant.create!(params) }


# Seeding rating for a restaurant in list via method find_by(name: "restaurant_name") since restaurant_id may not be anymore in the db

Review.new(content: "That was awesome", rating: 3, restaurant: Restaurant.find_by(name: "Napoli"))



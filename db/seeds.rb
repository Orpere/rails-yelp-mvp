# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name: 'belagama',
    address: 'armenia st',
    phone_number: '12371748381',
    category: 'french'
  },
  {
    name: 'tipo7',
    address: 'street 7',
    phone_number: '3627819809293',
    category: 'italian'
  },
  {
    name: 'tipo8',
    address: 'street 8',
    phone_number: '6254318617900',
    category: 'japanese'
  },
  {
    name: 'tipo9',
    address: 'street 9',
    phone_number: '38724932034984',
    category: 'italian'
  },
  {
    name: 'tipo10',
    address: 'street 10',
    phone_number: '3414418671900101',
    category: 'chinese'
  }
]

Restaurant.create!(restaurants_attributes)
puts 'Finished!'

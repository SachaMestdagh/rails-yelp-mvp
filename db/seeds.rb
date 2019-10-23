# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Yang',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  '+32713455673',
    category:        'chinese',
  },
    {
    name:         'La Frite',
    address:      '7 Boulevard Tirou, Charleroi',
    phone_number:  '+32713455673',
    category:        'belgian',
  },
  {
    name:         'Baguette',
    address:      '6 Avenue Montaigne, Paris',
    phone_number:  '+33613455673',
    category:        'french',
  },
  {
    name:         'Le sashimi',
    address:      '2 Rue Xianxian, Tokyo',
    phone_number:  '+11713455673',
    category:        'japanese',
  },
  {
    name:         'La Pasta',
    address:      '7 Ruta di quai, Palerme',
    phone_number:  '+36713455673',
    category:        'italian',
  },
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'

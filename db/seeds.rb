# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Page.create([
  { title: 'Home' },
  { title: 'About Us' },
  { title: 'Clients' },
  { title: 'Process' },
  { title: 'Portfolio' },
  { title: 'Contact' },
])

Member.create([
  { title: 'Rodrigo Garcia' },
  { title: 'Audrianna Talavera' },
  { title: 'Klemen Novak' },
  { title: 'Michael Domingo' },
  { title: 'Ruben Movsesyan' },
  { title: 'Bogdan O' },
  { title: 'Andrii Ryepin' },
])
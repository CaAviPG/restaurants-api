# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.find_or_initialize_by(email: 'user@gmail.com')
user.password = '123456'
user.password_confirmation = '123456'

restaurant1 = user.restaurants.find_or_initialize_by(name: 'Pardos', address: 'Centro')
restaurant2 = user.restaurants.find_or_initialize_by(name: 'Tusan', address: 'Miraflores')

user.save

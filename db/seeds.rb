# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Device.create!([
    { "name": "Moto G40 Fusion", "latitude": "51.501564","longitude": "-0.141944"},
    { "name": "iPhone 12 Pro", "latitude": "51.499581", "longitude": "-0.127309"},
    { "name": "Good Pixel 6", "latitude": "51.500792", "longitude": "-0.124613"}
])

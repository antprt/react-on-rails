# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Group.create(
  name: 'Los Carnívales',
  style: 'Comparsa',
  author: 'Antonio Martínez Ares',
  year: 2019,
  coac_position: 1,
  image_url: "https://www.weeky.es/wp-content/uploads/2019/03/LOS-CARNIVALES-1.jpg"
)

Group.create(
  name: 'La Eternidad',
  style: 'Comparsa',
  author: 'Antonio Martínez Ares',
  year: 2018,
  coac_position: 2,
  image_url: "https://carnavalpedia.es/images/1/1b/Comparsa-la-eternidad.jpg"
)

Group.create(
  name: 'La Chusma Selecta',
  style: 'Comparsa',
  author: 'Antonio Martínez Ares',
  year: 2020,
  coac_position: 2,
  image_url: "http://ocadizdigital.es/sites/default/files/styles/nx600/public/carnaval/articulos/170220-la%20chusma%20selecta-131.jpg?itok=MNTI8wEJ"
)

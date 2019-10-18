# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
image_urls = [
  'https://images.pexels.com/photos/67636/rose-blue-flower-rose-blooms-67636.jpeg',
  'https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg',
  'https://images.pexels.com/photos/248797/pexels-photo-248797.jpeg',
  'https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg',
  'https://images.pexels.com/photos/414171/pexels-photo-414171.jpeg',
  'https://images.pexels.com/photos/132037/pexels-photo-132037.jpeg',
  'https://images.pexels.com/photos/247478/pexels-photo-247478.jpeg',
  'https://images.pexels.com/photos/917494/pexels-photo-917494.jpeg',
  'https://images.pexels.com/photos/747964/pexels-photo-747964.jpeg',
  'https://images.pexels.com/photos/371633/pexels-photo-371633.jpeg',
  'https://images.pexels.com/photos/210186/pexels-photo-210186.jpeg',
  'https://images.pexels.com/photos/147411/italy-mountains-dawn-daybreak-147411.jpeg',
  'https://images.pexels.com/photos/417074/pexels-photo-417074.jpeg',
  'https://images.pexels.com/photos/247431/pexels-photo-247431.jpeg',
  'https://images.pexels.com/photos/247502/pexels-photo-247502.jpeg',
  'https://images.pexels.com/photos/87403/cheetah-leopard-animal-big-87403.jpeg',
  'https://images.pexels.com/photos/1327405/pexels-photo-1327405.jpeg',
  'https://images.pexels.com/photos/326900/pexels-photo-326900.jpeg',
  'https://images.pexels.com/photos/1470171/pexels-photo-1470171.jpeg',
  'https://images.pexels.com/photos/1108572/pexels-photo-1108572.jpeg',
  'https://images.pexels.com/photos/356056/pexels-photo-356056.jpeg',
  'https://images.pexels.com/photos/1714208/pexels-photo-1714208.jpeg'
]

image_urls.each do |img_url|
  Image.create(url: img_url)
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


cats = [
  {
    name: 'Lola',
    age: 10,
    enjoys: 'Food',
    image: 'https://www.guideposts.org/sites/default/files/styles/bynder_webimage/public/story/blackcat_marquee_0.jpg'
  },
  {
    name: 'Garfield',
    age: 43,
    enjoys: 'Lasagna',
    image: 'https://48hills.org/wp-content/uploads/2021/03/Buff-Garfield.jpg'
  },
  {
    name: 'Simba',
    age: 2,
    enjoys: 'Singing songs about monarchical succession',
    image: 'https://static01.nyt.com/images/2019/07/21/arts/23lionking1/merlin_154880472_6647f53b-1be2-43cd-87e0-ce26ebf1d4ed-superJumbo.jpg'
  },
  {
    name: 'Dog',
    age: 5,
    enjoys: 'Enjoys chasing other cats',
    image: 'https://media.istockphoto.com/photos/puppy-wearing-cat-ears-for-halloween-picture-id469195013?k=20&m=469195013&s=170667a&w=0&h=rxlll2wFYzst1UL_DUE0gZG8DgfDBksguNELUqt4IcQ='
  }
]
cats.each do |value|
  Cat.create value
  p "creating the cat attributes #{value}"
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

IMDB_IDS = ['tt1127180','tt4154756','tt0111161','tt0468569','tt0137523','tt0133093']
user = User.create(email:'test@test.com',password:'password')
list = List.create(title:'My List', user: user)
IMDB_IDS.each do |id|
  movie = Movie.create(imdbID: id)
  list.movies << movie
end

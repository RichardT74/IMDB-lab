require_relative("./models/movie")
require_relative("./models/star")
require_relative("./models/casting")

require( 'pry-byebug' )

Movie.delete_all()
Star.delete_all()


movie1 = Movie.new({ 'title' => 'Midsommar', 'genre' => 'Horror' })
movie1.save


star1 = Star.new({ 'first_name' => 'Florence', 'last_name' => 'Pugh'})
star1.save

movie1.genre = 'thriller'
movie1.update

binding.pry
nil

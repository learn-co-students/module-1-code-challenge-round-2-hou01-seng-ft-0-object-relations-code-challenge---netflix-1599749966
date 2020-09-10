# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

m1 = Movie.new("The wolf of Wall Street")
m2 = Movie.new("El Camino")
m3 = Movie.new("Inception")
m4 = Movie.new("Interstellar")

v1 = Viewer.new("Hugo")
v2 = Viewer.new("John")
v3 = Viewer.new("Ben")
v4 = Viewer.new("Jaden")

r1 = Review.new(v1, m1, 10)
r2 = Review.new(v3, m2, 6)
r3 = Review.new(v4, m2, 4)
r4 = Review.new(v2, m1, 7)
r5 = Review.new(v2, m3, 8)
r6 = Review.new(v2, m4, 2)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0

# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
m1 = Movie.new("movie1")
m2 = Movie.new("movie2")
m3 = Movie.new("movie3")

v1 = Viewer.new("payton")
v2 = Viewer.new("jackson")
v3 = Viewer.new("savannah")


r1 = Review.new(v1,m1,5)
r2 = Review.new(v3,m3,3)
r3 = Review.new(v2,m1,3)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0

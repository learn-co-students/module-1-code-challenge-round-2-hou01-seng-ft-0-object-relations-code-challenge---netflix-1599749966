# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end
m1 = Movie.new("IT")
m2 = Movie.new("Sister Act2")
m3 = Movie.new("Lassie")

v1 = Viewer.new("Meggs")
v2 = Viewer.new("Mike")
v3 = Viewer.new("Chad")

r1 = Review.new(v1,m2,10)
r2 = Review.new(v2,m3,2)
r3 = Review.new(v2,m1,7)
r4 = Review.new(v1,m1,8)

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0

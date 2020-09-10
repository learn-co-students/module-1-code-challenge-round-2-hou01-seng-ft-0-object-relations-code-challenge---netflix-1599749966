# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

m1 = Movie.new("Inception")
m2 = Movie.new("Interstellar")
m3 = Movie.new("knivesOut")

v1 = Viewer.new("Brandon")
v2 = Viewer.new("Jesse")
v3 = Viewer.new("Michael")

r1 = Review.new(v1, m1, 9)
r2 = Review.new(v2, m2, 8)
r3 = Review.new(v3, m3, 7)
r4 = Review.new(v3, m3, 9)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0

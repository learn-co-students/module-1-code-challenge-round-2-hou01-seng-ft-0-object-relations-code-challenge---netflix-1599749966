# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

m1 = Movie.new("Interstellar")
m2 = Movie.new("Inception")
m3 = Movie.new("Deadpool")

v1 = Viewer.new("Tom")
v2 = Viewer.new("Jerry")
v3 = Viewer.new("Harry")

r1 = Review.new(v1, m1, 10)
r2 = Review.new(v2, m2, 9)
r3 = Review.new(v3, m3, 10)
r4 = Review.new(v2, m1, 10)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0

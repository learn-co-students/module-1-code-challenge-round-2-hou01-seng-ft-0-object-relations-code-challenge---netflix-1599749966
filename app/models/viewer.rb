class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select{|r| r.viewer == self}
  end 

  def reviewed_movies
    self.reviews.collect{|r|r.movie}
  end

  def reviewed_movies?(movie)
     self.reviews.any?{|r|r.viewer}
  end

  def rate_movie(movie, rating)
    Review.new(self,movie,rating)
  end
  
end

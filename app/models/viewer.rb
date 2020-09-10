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
    Review.all.select{|review| review.viewer == self}
  end

  def reviewed_movies
    self.reviews.collect{|viewer| viewer.movie}
  end

  def reviewed_movie?(movie)
    self.reviewed_movies.any?(movie)
  end 

   def rate_movie(movie, rating)
     Review.movie.any?(movie, rating)
   end
  
end

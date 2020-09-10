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
    Review.all.select{|reviews|reviews.viewer == self}
  end

  def reviewed_movies
    self.reviews.collect{|reviews|reviews.movie}
  end

  def reviewed_movie?(movie)
    self.reviewed_movies.include?(movie)
  end

  def rate_movie(movie,rating)
    if self.reviews.include?(movie,rating)
      rating = rating

    else
      Review.new(self,movie,rating)
    end
  
  end
  
end

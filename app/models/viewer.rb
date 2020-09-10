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
    Review.all.select do |rev|
      rev.viewer == self
    end
  end

  def reviewed_movies
    self.reviews.collect do |v|
      v.movie 
    end
  end

  def reviewed_movie?(movie)
    self.reviews.select {|rev| rev.movie == movie}.collect{|rev| rev.movie}.include?(movie)
  end

  def rate_movie(movie, rating)
    rev = self.reviewed_movies.include?(movie, rating)
  end
  
end

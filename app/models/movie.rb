class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select {|reviews|reviews.movie == self}
  end

  def reviewers
    self.reviews.collect {|reviews|reviews.viewer}
  end
  def highest_rated
    self.reviews.max{|movie| movie.review}
  end
end

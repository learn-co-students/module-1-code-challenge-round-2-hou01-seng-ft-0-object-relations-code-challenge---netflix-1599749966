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
    Review.all.select do |rev|
      rev.movie == self
    end
  end

  def reviewers
    self.reviews.collect do |rev|
      rev.viewer
    end
  end

  def average_rating
    sum = self.reviews.sum {|rev| rev.rating}
    sum / self.reviews.count
  end

  def self.highest_rated
    self.all.select do |
  end

end

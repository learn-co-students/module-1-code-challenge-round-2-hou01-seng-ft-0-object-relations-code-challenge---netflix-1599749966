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
    Review.all.select{|reviews|reviews.movie == self}
  end

  def reviewers
    self.reviews.collect{|reviews|reviews.viewer}
  end

  def average_rating
    total = self.reviews.collect{|review|review.rating}.sum
    total / self.reviews.count
  end

  def self.highest_rated
    self.average_rating.max_by{|ar|ar.rating}
  end

end

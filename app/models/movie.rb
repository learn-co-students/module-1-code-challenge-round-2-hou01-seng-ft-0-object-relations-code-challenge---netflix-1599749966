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
    Review.all.select {|r|r.movie == self}
  end

  def reviewers
    self.reviews.collect{|r|r.viewer}
  end

  def average_rating
    sum = self.reviews.collect{|r|r.rating}.sum
    total = self.reviews.count
     final = sum/total
    #binding.pry
  end


  

end

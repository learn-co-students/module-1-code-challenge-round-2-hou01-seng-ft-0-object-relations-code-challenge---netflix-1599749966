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
    Review.all.select {|review| review.viewer == self}
  end

  def reviewed_movies
    reviews.collect {|review| review.movie}
  end

  def reviewed_movie?(movie)
    reviewed_movies.include?(movie)
  end

  def rate_movie(movie, rating) # For this method, I wanted to use reviewed_movies method again
    if reviewed_movie?(movie) # if this is true, then we replace the old rating with the new one (idk if it was used correctly)
      Review.rating = rating # this line updates the rating
    else     # if false, we make a new review
      Review.new(self, movie, rating) # this line makes the new review
    end
  end # I couldn't figure it out. I get a no method error for 'rating='. I even changed the attr_reader to accessor but it didn't work.

end

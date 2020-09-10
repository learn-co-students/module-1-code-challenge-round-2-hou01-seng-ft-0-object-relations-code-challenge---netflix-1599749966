class Review

    attr_reader :viewer, :movie, :rating

    @@all = []

    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating

        self.class.all << self
    end

    def self.all
        @@all
    end

end

class Movie
  attr_reader :title, :year
​
  @@all = []
​
  def initialize(title, year)
      @title = title
      @year = year
      @@all << self
  end
​
  def self.cast      # all the actors in the movie
      Role.
  end
​
end     # end of Movie class%

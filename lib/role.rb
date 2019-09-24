class Role
  ​
      attr_reader :actor, :movie:, :character_name
  ​
      @@all = []
  ​
      def initialize(actor, movie, character_name)
          @actor = actor
          @movie = movie
          @character_name = character_name
          @@all << self
      end
  ​
      def self.all
          @@all
      end
  ​
      def self.movie
          self.all.select {|roles| role.movie }       # from all Roles, iterate through each and select "movie"
      end
  ​
      def self.actor
          self.all.select {|roles| role.actor }       # from all Roles, iterate through each and select "actor"
      end
  ​
  end     # end of Role class
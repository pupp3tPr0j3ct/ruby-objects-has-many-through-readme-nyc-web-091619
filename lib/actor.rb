class Actor
    ​
        attr_accessor :first_name, :last_name
        attr_reader :age
    ​
        def initialize(first_name, last_name, age)
            @first_name = first_name
            @last_name = last_name
            @age = age
            @@all << self
        end
    ​
        def self.all
            @@all
        end
    ​
        def full_name(first_name, last_name)
            full_name + last_name
        end
    ​
        def actor_movies
            actor_roles = Roles.all.select{ |role| role.actor == self }
            actor_roles.map {|role| role.movie}
        end
    ​
        def actor_credits
            actor_roles = Role.all.select do
                |role| role.actor == self
            end
    ​
            movie_titles = actor_roles.map do
                |role| role.movie.title
            end
            character = actor_roles.map do
                |movie| movie.character_name
            end
    ​
            Hash[movie_titles.zip(character)]
        end
    ​
    ​
    ​
    end
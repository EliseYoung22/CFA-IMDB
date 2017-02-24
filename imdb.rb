class Person
  # a person has........
  def initialize(name)
    @name = name
  end

  attr_accessor :name
end

class Actor < Person
#a actor has ....
  def initialize(name, acting_style)
    super(name)
    @acting_style = acting_style
  end
  attr_accessor :acting_style
end

class Diretor < Person #class inheritance
  def initialize(name, filmography)
    super(name) #
    @filmography = filmography
  end
end

class Movie
  def initialize(title, description, actors, director)
    @title = title
    @description = description
    @actors = actors
    @director = director
  end

  attr_accessor :title, :description, :actors, :director

  #self refers to the class
  #ObjectSpace
  def self.all
    ObjectSpace.each_object(self).to_a
  end

end

leo = Actor.new("Leo", "bad")
wallice = Diretor.new("wallice", "superbad 4")
superbad4 = Movie.new("Superbad4", "test", [leo, leo], wallice)
superbad3 = Movie.new("Superbad3", "test", leo, wallice)
hot = Movie.new("hot", "test", leo, wallice)
bad = Movie.new("bad", "test", leo, wallice)
good= Movie.new("good", "test", leo, wallice)

puts Movie.all.count

puts "this is the actors"

puts"=" * 5

Movie.all.each do |movie|
  puts movie.title
end
# puts leo.name
# puts wallice.name
# puts superbad4.title

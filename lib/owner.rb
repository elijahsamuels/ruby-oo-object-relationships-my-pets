class Owner

  @@all = []
  
  attr_reader :name, :species

  def initialize(name)
    @name = name
    @species = "human"
    # @say_species = "I am a #{@species}."
    @@all.push self

  end

  def say_species
        "I am a #{self.species}."
  end


  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def cats
    Cat.all.select { |cat| cat.owner == self }    #returns all cats 
  end

  def dogs
    Dog.all.select { |dog| dog.owner == self }    #returns all dogs 
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    Dog.all.select { |dog| dog.mood = "happy" }
  end

  def feed_cats
    Cat.all.select { |cat| cat.mood = "happy" }
  end

  def sell_pets # can sell all its pets, which makes them nervous
    cats.each { |cat| cat.mood = "nervous"; cat.owner = nil}
    dogs.each { |dog| dog.mood = "nervous"; dog.owner = nil }
  end
  def list_pets
    "I have #{dogs.count} dog(s), and #{dogs.count} cat(s)."
  end

end
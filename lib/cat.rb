class Cat

  @@all = []
  
  attr_accessor :owner, :mood
  attr_reader :name

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all.push self
  end

  def self.all
    @@all
  end

  # def self.count
  #   @@all.count
  # end

  # def self.reset_all
  #   @@all.clear
  # end

end
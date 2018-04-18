class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reset_all
    @all = []
  end

  def species(species = "human")
    @species = species
  end

  def say_species
    "I am a human."
  end

  def pets
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def buy_fish(name)
    fish = Fish.new(name)
    puts fish.name
    puts self.pets[:fishes]
  end


end

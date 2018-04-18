class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name, pets = {fishes: [], cats: [], dogs: []})
    @name = name
    @pets = pets
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @all = []
  end

  def species(species = "human")
    @species = species
  end

  def say_species
    "I am a human."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish

  end


end

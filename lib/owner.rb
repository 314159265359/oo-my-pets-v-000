class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species, pets = {fishes: [], cats: [], dogs: []})
    @species = species
    @pets = pets
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @all = []
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end


end

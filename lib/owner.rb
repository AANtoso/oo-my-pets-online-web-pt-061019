class Owner
attr_accessor :cats, :dogs
attr_reader :species, :name

  def initialize(name)
    @name = name
    @species = "human"
    @cats = []
    @dogs = []
    @@all << self
  end

  def say_species
    # "I am a human."
  "I am a #{@species}."
  end

  @@all = []
  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{species}."
  end

   def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
  end

   def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
  end

   def walk_dogs
    pets[:dogs].map {|dog| dog.mood = "happy"}
   end

   def play_with_cats
    pets[:cats].map {|cat| cat.mood = "happy"}
  end

   def sell_pets
    pets.each do |type, pets|
      pets.map {|pet| pet.mood = "nervous"}
    end
    pets.clear
  end

   def list_pets
    "I have #{pets[:dogs].size} dog(s) and #{pets[:cats].size} cat(s)."
  end
end

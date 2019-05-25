class Owner
  attr_accessor :pets
  attr_reader :species
  attr_writer :name


  @@all = []

  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
   "I am a #{@species}."
  end

  def name
    self.name = @name
  end

  def save
    @pets << self
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets.map do |key, value|
      if key == :fishes
        value << fish
      end
    end
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets.map do |key, value|
      if key == :cats
        value << cat
      end
    end
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets.map do |key, value|
      if key == :dogs
        value << dog
      end
    end
  end

  def walk_dogs
    @pets[:dogs][0].mood = "happy"
  end

  def play_with_cats
    @pets[:cats][0].mood = "happy"
  end

  def feed_fish
    @pets[:fishes][0].mood = "happy"
  end

  def sell_pets
    @pets.each do |type, pet|
      pet.each do |name|
        if name.mood == "happy"
          name.mood = "nervous"
        end
      end
    end
      @pets.map {|type, pet| pet.clear}
  end
    # @pets.map do |type, pet|
    #   if type == :dogs
    #     Dog.mood = "nervous"
    #   elsif type == :cats
    #     Cat.mood == "nervous"
    #   elsif type == :fishes
    #     Fish.mood == "nervous"
    #   else
    #     pet
    #   end


  def list_pets

  end



end

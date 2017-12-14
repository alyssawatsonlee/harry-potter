class HarryPotter::Characters

  attr_accessor :student_1, :name, :gender, :house, :species, :character

  @@all = []

  def self.new_from_api(char_info)
    @character = char_info
    @@all << @character
    binding.pry
  end

  def iniinitialize(name = nil, species = nil)
    @name = name
    @species = species
  end

  def self.all
    #binding.pry
    @@all
  end

  def self.all_students
    @@all
  end

  def self.all_staff
    puts "list of staff"
  end

  def self.all_houses
    #check spelling haha
    puts "Please choose which house you are interested in:"
    puts "1. Gryfinndor"
    puts "2. Hufflepuff"
    puts "3. Ravenclaw"
    puts "4. Slytherin"
    input = gets.strip
    if input == "1"
      puts "all the gryfindors"
    elsif input == "2"
      puts "all the Hufflepuffs"
    elsif input == "3"
      puts "all the Ravenclaws"
    elsif input == "4"
      puts "all the Slytherin"
    else
      puts "Sorry, I dont understand! Please enet a number 1-4"
      self.houses
    end
  end

end

=begin
Rick class
========
Attributes
------------
hairstyle
family
diminsion
time
age
gender
race

Methods
------------
initialize(sets attributes and prints initialize statement)
invent
interdemsional travle
time travle
find location
=end
class Ricks
  attr_accessor :hairstyle, :family
  attr_reader :diminsion, :time, :gender, :race, :name

  def initialize (diminsion = SecureRandom.base64([2,3,4,5].sample), name = "Rick Sanchez", hairstyle = "Standard Rick Style", gender = "Male", race = "Human", age = 60)
    @name = name
    @hairstyle = hairstyle
    @gender = gender
    @diminsion = diminsion
    @time = "Present-Time"
    @age = age
    @family = ["Beth", "Jerry", "Summer", "Morty"]
    puts "Wubba-Lubba-Dubdub"
  end

  def invent(invention)
    "Look at *belch* this #{invention.to_s}. It's *burp* It's gonna change the game Morty."
  end

  def interdeminsional_travle(diminsion)
    @diminsion = diminsion
  end

  def time_travle(time)
    @time = time
  end

  def location
    puts "This rick is in the#{diminsion} in year #{time}"
  end
end


#Interface
#========================================
=begin Psudocode:

1. interface method
--gets info to be ran in helper methods
--runs helper methods with info

2. Create ricks method
--input: variables created in interface
--steps: asks if you would like to make ricks by hand or generate randomly
--outputs: Ricks to list of ricks

3. print list method
--input: list of ricks
--steps: -- For each element in array
=end
require 'SecureRandom'

def create_rick
  attributes = %w(name hairstyle diminsion )
end

def interface
  all_the_ricks = []
  puts "How many Ricks would you like to make?"
  rick_number = gets.chomp
  rick_number.times do
    all_the_ricks  << create_rick()
  end
  print_ricks(all_the_ricks)
end

#Driver
#========================================

rick_c137 = Ricks.new
rick_c137.time_travle(1960)
rick_c137.interdeminsional_travle("J19ζ7")
rick_c137.location
puts rick_c137.name
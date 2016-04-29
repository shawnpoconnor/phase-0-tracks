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

  def initialize (diminsion, name = "Rick Sanchez", hairstyle = "Standard Rick Style", gender = "Male", race = "Human", age = 60)
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

rick_c137 = Ricks.new("C-137")
rick_c137.time_travle(1960)
rick_c137.interdeminsional_travle("J19ζ7")
rick_c137.location
puts rick_c137.name

def interface
  puts "How many Ricks would you like to make?"
end
class Ricks
  attr_accessor :hairstyle, :gender, :family, :location

  def initialize (hairstyle, gender, location)
    @hairstyle = hairstyle
    @gender = gender
    @location = location
    @age = 60
    @family = ["Beth", "Jerry", "Summer", "Morty"]

  def invent
    "Look at *belch* this. It's *burp* It's gonna change the game Morty."
  end

end
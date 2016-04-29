class Ricks
  attr_accessor :hairstyle, :family
  attr_reader :diminsion, :time, :age, :gender

  def initialize (hairstyle, gender, location)
    @hairstyle = hairstyle
    @gender = gender
    @diminsion = location
    @time = "Present-Time"
    @age = 60
    @family = ["Beth", "Jerry", "Summer", "Morty"]

  def invent(invention)
    "Look at *belch* this #{invention.to_s}. It's *burp* It's gonna change the game Morty."
  end

  def interdeminsional_travle(diminsion)
    @diminsion = diminsion
  end

  def time_travle(time)
    @time = time
  end
end
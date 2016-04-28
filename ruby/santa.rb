class Santa
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies (cookie_type)
    puts "That was a good #{cookie_type}"
  end

  def initialize(name gender)
    puts "Initalizing Santa"
    @name = name
    @gender = gender
    @reindeer_ranking = %w(Rudolph Dasher Dancer Prancer Vixen Comet Cupid Donner Blitzen)
    @age = 0
  end
end

def interface
  puts "What is your santas name?"
  name = gets.chomp
  puts "what is your santas gender?"
  gender = gets.chomp
end

santas = []
puts "how many santas would you like to make?"
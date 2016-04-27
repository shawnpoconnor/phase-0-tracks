class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
    integer.times do
      p "Woof!"
    end
  end

  def roll_over
    p "*roll over*"
  end

  def dog_years(year)
    dog_year = 7
    dog_years = dog_year * year
    p dog_years
  end

  def shake
    puts "shake shake shake"
  end

  def initialize
    p "Initializing a new puppy instance..."
  end

end

#fido = Puppy.new
#fido.fetch("ball")
#fido.speak(5)
#fido.roll_over
#fido.dog_years(5)
#fido.shake

class Ball

def initialize
  p "Shiny new ball being initialized..."
end

def bounce(number)
  number.times do
    p "bounce"
  end
end

def roll(feet)
  p "The ball rolled #{feet} feet away."
end


end

#50.times {Ball.new}

balls = []
50.times do
  Ball.new
  balls << Ball.new
end
p balls

balls.each {|ball| ball.bounce(1)}
balls.each {|ball| ball.roll(10)}





#Use a loop to make 50 instances of your class.

#Modify your loop so that it stores all of the instances in a data structure.

#Iterate over that data structure using .each and call the instance methods you wrote on each instance. So if you wrote a Gymnast class, this is where you'd call .flip and .jump on each of your instances of Gymnast.


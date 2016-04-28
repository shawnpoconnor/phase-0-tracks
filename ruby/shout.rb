# module Shout
#   def self.yell_angerly(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words + "!!!" + " :)"
#   end
# end

# puts Shout.yell_angerly("Howdy there")
# puts Shout.yelling_happily("Hiya")

module Shout
  def yell_angerly(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + "!!!" + " :)"
  end
end

class Goat
  include Shout
end

class Human
  include Shout
end

joe = Human.new
gary = Goat.new

puts joe.yell_angerly("Hello")
puts gary.yelling_happily("bey bey")
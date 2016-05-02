class Dancer
  attr_accessor :name, :age

  def initialize(name, age)
    puts "Initializeing Dancer"
    @name = name
    @age = age.to_i
  end
end
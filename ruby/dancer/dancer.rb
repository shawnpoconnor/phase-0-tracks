class Dancer
  attr_accessor :name, :age, :card, :tutu_color
  def initialize(name, age, card = [], tutu_color = "white")
    puts "Initializeing Dancer"
    @name = name
    @age = age.to_i
    @card = card
    @tutu_color = tutu_color
  end

  def pirouette
    return "*twirls*"
  end

  def bow
   return "*bows*"
  end

  def leap
    return "*leaps*"
  end

  def queue_dance_with(name)
    card << name
  end

  def begin_next_dance
    now_dancing = card.delete_at(0)
    return "Now dancing with #{now_dancing}."
  end

  def change_tutu(color)
    @tutu_color = color
  end

end
class Santa
  attr_reader :ethnicity, :gender, :reindeer_ranking
  attr_accessor :age

  def initialize (ethnicity, gender)
    puts "Initalizing Santa"
    @ethnicity = ethnicity
    @gender = gender
    @reindeer_ranking = %w(Rudolph Dasher Dancer Prancer Vixen Comet Cupid Donner Blitzen)
    @age = 0
  end
# gettr
#   def age
#     @age
#   end

#setter
  # def age= (age)
  #   @age = age
  # end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies (cookie_type)
    puts "That was a good #{cookie_type}"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(bad_reindeer)
    i = 0
    deleted_reindeer = nil
    while deleted_reindeer != @reindeer_ranking[i]
      if @reindeer_ranking[i] == bad_reindeer
        deleted_reindeer = @reindeer_ranking.delete_at(i)
        @reindeer_ranking << deleted_reindeer
      end
      i += 1
    end
  end
end

santas = []
puts "how many santas would you like to make?"
number_of_santas = gets.chomp
number_of_santas.to_i.times do
  puts "what is your santa's ethnicity?"
  ethnicity = gets.chomp
  puts "what is your santa's gender?"
  gender = gets.chomp
  santas << Santa.new(ethnicity, gender)
end

# **Driver Code**
puts santas[0].age
santas[0].age=(25)
puts santas[0].age
santas[0].get_mad_at("Dasher")
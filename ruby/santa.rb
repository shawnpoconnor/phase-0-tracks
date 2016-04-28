class Santa
  attr_reader :ethnicity, :gender, :reindeer_ranking
  attr_accessor :age

  def initialize (ethnicity, gender, age = 0)
    puts "Initalizing Santa"
    @ethnicity = ethnicity
    @gender = gender
    @reindeer_ranking = %w(Rudolph Dasher Dancer Prancer Vixen Comet Cupid Donner Blitzen)
    @age = age
  end

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

# **Driver Methods**
def make_by_hand
    puts "what is your santa's ethnicity?"
    ethnicity = gets.chomp
    puts "what is your santa's gender?"
    gender = gets.chomp
    return Santa.new(ethnicity, gender)
end

def generate_random_santa
  possible_genders = ["Female", "Male", "Agender", "Bigender", "Genderfluid"]
  possible_ethnicity = ["White", "Black", "Asian", "Hispanic", "Middleastern", "Unicorn", "Dinosaur"]
  ethnicity = possible_ethnicity.sample
  gender = possible_genders.sample
  age = [*0..140].sample
  return Santa.new(ethnicity, gender, age)
end

# def generate_santas(random_santas)
#   if random_santas == "yes"
#     number_of_santas.times {santas << generate_random_santa}
#   else
#     number_of_santas.times {santas << make_by_hand}
#   end
# end
# **DRIVER CODE**
puts "how many santas would you like to make?"
number_of_santas = gets.chomp.to_i
puts "Would you like to generate them randomly"
random_santas = gets.chomp
santas = []

if random_santas == "yes"
  number_of_santas.times {santas << generate_random_santa}
else
  number_of_santas.times {santas << make_by_hand}
end

santas[0].age=(55)
print santas


# Sudiocode
# ask user if they would like to randomly generate santas
# ask user how many santas
# if they want random santas run random Method
# else run make_by_hand Method
# return array of santas


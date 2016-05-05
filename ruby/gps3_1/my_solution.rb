# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Allows you to load a file that you have created into the present working file.
# Require loads a file, usually a standard library that Ruby comes loaded with or is added to Ruby, that is saved somewhere else on the computer.

require_relative 'stat_data'

class VirusPredictor
  # When creating a new object instance it will set the variables as specified by this method.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # Returns the private information from predicted_deaths and speed_of_spread methods
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private
  # Predicts the number of deaths, applies a different constant to population depending on population density
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  # Predicts the speed of spread, assigns a different speed depending on population density
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

# Method that will loop through each state, create a new instances, and create a virus predictor for each state
def generate_virus_predictor(states)
  states.each{|state, pop_info|
    predictor = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
    predictor.virus_effects
  }
end

generate_virus_predictor(STATE_DATA)


#=======================================================================
# Reflection Section

# -One hash used strings with hash rockets and the other uses symbols
# -require_relative is used to load a whole file you have created and allow you to access the data and methods contained within. where as require is used for built in ruby modules and addons.
# -as far as I can tell the only ruby method that works to iterate through a hash is the .each method.
# -The variable names were super useful in keeping the info straight through 3 states. It was easy to find them in the orignal doc, driver code, and class instances.
# -Understanding iteration through hashes was really cemented in this challenge. I felt like I was having a bit of trouble at the start, but
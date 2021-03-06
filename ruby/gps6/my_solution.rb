# Virus Predictor

# I worked on this challenge with Matthew Cataldi.
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative is a way that the source file requires another file in the same or relative directory to its own location.  This works simliar to an href attribute in an anchor tag minus the #id type.  It's a shorthand way to reference a file counter to require which needs the full absolute path of a file.
# require can handle any path, but is most typically used to reference files that are outside of the root folder scope of the referencing file.  Needs a full absolute path compared to require_relative.

require_relative 'state_data'

class VirusPredictor
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # Organizing all the variables into one and using on the method.
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private
  # a method that predicts deaths is solely based on population density
  def predicted_deaths(population_density, population, state)
    if @population_density >= 50
      number_of_deaths = (@population * (@population_density / 500)).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end
  # Adjust the speed of the virus spreading based on the density of the population.  The higher the density, the greater the speed of spread.
  def speed_of_spread(population_density, state)
    speed = (2.5 - (@population_density / 100)).round(2)
    if speed < 0
      speed = 0
    end  
    puts " and will spread across the state in #{speed} months.\n"
  end
end
#=======================================================================
# DRIVER CODE
STATE_DATA.each { |state_name, state_values|
  state_instance = VirusPredictor.new(state_name, STATE_DATA[state_name][:population_density], STATE_DATA[state_name][:population])
  state_instance.virus_effects
}

# TESTS
# myVirusPredictor = VirusPredictor.new("Illinois", 231.9, 12875255)
# myVirusPredictor.predicted_deaths(231.9, 12875255, "Illinois")
# myVirusPredictor.speed_of_spread(231.9, "Illinois")
#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# One uses string, the other uses symbols instead. The symbols being more memory efficient.

# What does require_relative do? How is it different from require?
# Require_relative allows a local file to be used, where as Require can use a file from anywhere, provided it has the path.

# What are some ways to iterate through a hash?
# Simple until loops, each/ map loops

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# I guess what REALLY stood out to me is the fact that there's a population density variable. Seems like something we would have to make before hand using the hashes.

# What concept did you most solidify in this challenge?
# Class variables & calls.
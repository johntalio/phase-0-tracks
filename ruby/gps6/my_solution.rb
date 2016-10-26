# Virus Predictor

# I worked on this challenge [with: Albert].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
# It allows us to point to a file using the current file as a starting point.

require_relative 'state_data'

class VirusPredictor
  attr_reader :population_density, :state, :population

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# prints the predicted virus effect summary by combining two methods.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

# this method calculates predicted deaths based on population density and population.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if population_density >= 200
      x = 0.4
    elsif population_density >= 150
      x = 0.3
    elsif population_density >= 100
      x = 0.2
    elsif population_density >= 50
      x = 0.1
    else
      x = 0.05
    end

    number_of_deaths = (population * x).floor

    print "#{state} will lose #{number_of_deaths} people in this outbreak"

  end

# calculates how fast the disease would spread through a particular state, given the population of the state.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if population_density >= 200
      speed = 0.5
    elsif population_density >= 150
      speed = 1
    elsif population_density >= 100
      speed = 1.5
    elsif population_density >= 50
      speed = 2
    else
      speed = 2.5
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

STATE_DATA.each do |state, hash|
  state_report = VirusPredictor.new(state, hash[:population_density], hash[:population])
  state_report.virus_effects
end


#=======================================================================
# Reflection Section
# Right now, the hashes contained by STATE_DATA are written with the key as a string and the value as a hash that, itself, follows a syntactic sugar syntax. While this method works, you could replace the string key as a symbol (written as :Alabama, for instance). You could also rewrite the syntactic sugar in the value hash (by writing :population_density, for instance).
# The purpose of require_relative is to link one of your files to another one of your file. On the other hand, require links one of your files to a file, or library, that could have been created by someone else.
# You can iterate through a hash by, in this case at least, calling the value hash in STATE_DATA and then bracketing the keys within that hash to display that key's information.
# We learned that the variables in virus_effects were unnecessary given that they were previously instantiated. We created more DRY code by adding an attr_reader method with those instances which allowed us to eliminate any @ signs as well.
# For me, learning to iterate through a hash was a concept that gave me some trouble at first. But I think that working through this challenge made me more comfortable with working with that type of code. Also, the concept of DRY was solidified for me.






# Virus Predictor

# I worked on this challenge [ with: Logan ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#require is a built in method and require_relative allows you
#to aquire the file containing the statement to use an outside resource
#to use in the file
#
#population density is number of people per square mile as of 2012
#this data is updated every year with estimates from a 10 year census



require_relative 'state_data'

class VirusPredictor
#initializes a new instance of class with state data
#sets data equal to class variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#calling two other methods to predict the virus_effects
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
#calculation for number of deaths depending upon density then * by population
#then prints the answer
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4)
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3)
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2)
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1)
    else
      number_of_deaths = (@population * 0.05)
    end

    print "#{@state} will lose #{number_of_deaths.floor} people in this outbreak"

  end
#depending upon population density this method calculates spead of virus spreading
#print the speed

#We couldn't figure out how to refactor the speed_of_spread method
#We are sure there is a way we just couldn't quite get there
#any insight would be awesome!!
  def speed_of_spread #in months
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

STATE_DATA.each do |state, population|
  state = VirusPredictor.new(state, STATE_DATA[state][:population_density],STATE_DATA[state][:population])
  state.virus_effects
end

#=======================================================================
# Reflection Section
#The difference between the two hash syntaxes are that one hash contains 
#the other hash inside of it. Making it the "hashy hash"

#require is a built in method and require_relative allows you
#to aquire the file containing the statement to use an outside resource
#to use in the file

#you can iterate through a hash using .each, .map, .sort, .keys, etc

#When we refactored virus_effects we realized we could get rid of the variables
#because they were repetitive

#I solidified my refactoring during this challenge
class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(n)
    puts "woof!"*n
  end

  def rolls_over
  	puts "*rolls over*"
  end

  def dog_years(num)
  	p num*7
  end
  def new_name(name)
    puts "Spot preferes to be called #{name}."
  end
  def initialize
    p "initializing new puppy instance..."
  end

end
spot=Puppy.new
spot.fetch("ball")
spot.speak(6)
spot.rolls_over
spot.dog_years(6)
spot.new_name("James")

class Hockey
  def initialize
    puts "Initializing new player..."
  end
  def goals(g)
    puts "Our player has scored #{g} goals."
  end
  def teeth
    puts "*Gets teeth knocked out*"
  end
end

goon=Hockey.new
goon.goals(78)
goon.teeth

players=[]

50.times do
  players<< Hockey.new
end

players.each do |puck|
  puck.teeth
  puck.goals(rand 1..50)
end
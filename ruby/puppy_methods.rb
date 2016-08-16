class Puppy

  def initialize
    p "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(n)
    puts "Woof!"*n 
  end

  def roll_over
    p "**rolls over**"
  end

  def dog_years(num)
    p num*7
  end

  def new_name(name)
    puts "Our dog prefers to be called #{name}."
  end

end

fido = Puppy.new
fido.fetch("ball")
fido.speak(4)
fido.roll_over
fido.dog_years(5)
fido.new_name("Tim")

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
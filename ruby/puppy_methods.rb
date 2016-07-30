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

end
spot=Puppy.new
spot.fetch("ball")
spot.speak(6)
spot.rolls_over
spot.dog_years(6)
spot.new_name("James")
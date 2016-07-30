class Santa 
	@reindeer_ranking= ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	@age= 0
	def speak
		puts "Ho, Ho, ho! Haaaappy holidays!"
	end
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end
	def initialize(gender, ethnicity,)
		@gender= gender
		@ethnicity= ethnicity
		p "Initializing Santa instane..."
	end
	def celebrate_birthday(new_age)
		@age= new_age
	end
end

claus=Santa.new("male", "other")
claus.speak
claus.eat_milk_and_cookies(choc chip)
santas=[]
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")
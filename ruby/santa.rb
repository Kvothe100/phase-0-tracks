class Santa 
	attr_accessor :age, :ethnicity

	@reindeer_ranking= ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	@age= 0
	def speak
		puts "Ho, Ho, ho! Haaaappy holidays!"
	end
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end
	def initialize(gender, ethnicity)
		@gender= gender
		@ethnicity= ethnicity
		p "Initializing Santa instance..."
	end
	def celebrate_birthday(new_age)
		@age= new_age
	end
	def gender=(new_gender)
		@gender = new_gender
	end
	
	puts "Reindeer ranking is currently #{@reindeer_ranking}"
end		

santas=[]

santas << claus=Santa.new("male", "other")
claus.speak
claus.eat_milk_and_cookies("choc chip")
claus.gender= "N/A"

gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
gender.length.times do |i|
	santas << Santa.new(gender[i], ethnicity[i])
end

100.times do
	santas << Santa.new(gender.shuffle.sample, ethnicity.shuffle.sample)
end
santas.each do |sanda|
	sanda.celebrate_birthday(rand 0..140)
end
p santas


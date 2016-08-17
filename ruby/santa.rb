class Santa

	def initialize(gender, ethnicity)
		p "Initializing Santa instance...."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking =["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		p "Ho, ho, ho! Haaaaapppy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie"
	end
end

new_santa = Santa.new
new_santa.speak
new_santa.eat_milk_and_cookies("Vanilla")
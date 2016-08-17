class Santa
	  attr_accessor :gender,:age
  attr_reader  :reindeer_ranking,:ethnicity

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

	def celebrate_birthday
		@age += 1
		puts "Santa is now #{@age} year(s) old."
	end

	def get_made_at(reindeer)
		if @reindeer_ranking.include?(reindeer)
			@reindeer_ranking.delete(reindeer)
			@reindeer_ranking << reindeer
		else
			puts "That reindeer is not with us!"
		end
end

new_santa = Santa.new
new_santa.speak
new_santa.eat_milk_and_cookies("Vanilla")
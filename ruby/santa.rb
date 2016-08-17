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

	def celebrate_birthday(new_age)
		@age = new_age
	end

	def get_made_at(reindeer)
		if @reindeer_ranking.include?(reindeer)
			@reindeer_ranking.delete(reindeer)
			@reindeer_ranking << reindeer
		else
			puts "That reindeer is not with us!"
		end
	end
end

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

100.times do 
	santas << Santa.new(example_genders.shuffle.sample, example_ethnicities.shuffle.sample)
end

santas.each do |santa|
	santa.celebrate_birthday(rand 0..140)
end

santas.each do |santa|
	puts santa.ethnicity
	puts santa.age
	puts santa.gender
	puts santa.reindeer_ranking
end

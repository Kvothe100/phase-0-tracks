class Dancer
	attr_accessor :age, :name
	def initialize(name, age)
		@name = name
		@age = age
	end

	def pirouette
		p "*twirls*"
	end

	def bow
		p "*bows*"
	end

	def leaps
		puts "Leaps in the air!"
	end

end

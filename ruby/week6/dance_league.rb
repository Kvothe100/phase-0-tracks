class Dancer
	attr_accessor :age, :name, :card
	def initialize(name, age)
		@name = name
		@age = age
		@card = []
	end

	def pirouette
		p "*twirls*"
	end

	def bow
		p "*bows*"
	end

	def leaps
		p "Leaps in the air!"
	end

	def queue_dance_with(dancer)
		@card << dancer
		@card
	end

	def begin_next_dance
		p "Now dancing with #{@card[0]}."
		@card.delete_at(0)
		@card
	end


end

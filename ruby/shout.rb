#module Shout
	#def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end
# 	def self.yelling_happily(words)
# 		words + "!!!" + " :)"
# 	end
# end
# self.yell_angrily("YOU ARE A SMELLY PERSON")
# self.yelling_happily("WOO! THOSE ARE MY LOTTO NUMBERS")
module Shout
	def shouting(words)
		puts words + "!!!!"
	end
end

class Happy
	include Shout
end

class Angry
	include Shout
end

happy=Happy.new
happy.shouting("We won")

angry=Angry.new
angry.shouting("we lost")
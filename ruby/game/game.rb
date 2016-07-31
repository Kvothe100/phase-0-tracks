#declare a class
class Game
#add attributes
	attr_reader :how_many_guesses
	attr_accessor :secret_word, :word_guessed, :guessed_letters

	#add methods for gathering and setting arrays
	def initialize
		puts "Welcome to our hang-person game. No gender needed for our potential victim :)"
		@word_guessed = []
		@guessed_letters = []
	end
	#make method for: getting the word, setting the
	#number of guesses and filling up the secret_word
	# this part took me some time. But I got it. yay!
	def secret(word)
		@secret_word= word
		word.length.times {word_guessed << '_'}
		@how_many_guesses = words.length * 1.5
	end
	#time to start letting them guess letters!
	#I'll need to use the handy .include?
	def pick(letter)
		if @secret_word.include? letter
			true
		else
			false
		end
	end
end

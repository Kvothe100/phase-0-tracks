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
		@how_many_guesses = word.length * 3
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

#make an instance
hangperson= Game.new
#input from user for the secret_word
puts "What is the secret word you wish?"
hangperson.secret(gets.chomp)

#start your guessing!!
until hangperson.guessed_letters.length == hangperson.how_many_guesses || !hangperson.word_guessed.include?('_')
	puts "Guess a letter"
	pick= gets.chomp
	if pick.is_a?(String) && pick.length == 1
		if hangperson.guessed_letters.include? pick
			puts "Hey bub, you already guessed that letter!"
		elsif hangperson.pick(pick)
			already_guessed = []
			i=0
			hangperson.secret_word.each_char do |letter|
				if letter == pick
					already_guessed << i
				end
				i+=1
			end 
			already_guessed.each do |location|
				hangperson.word_guessed[location] = pick
			end
			hangperson.guessed_letters << pick
			# now we inform them they are sooooo awesome
			puts "You got a letter!"
			puts hangperson.word_guessed.join(' ')
			#inform them them they didn't guess a letter in the word....
		else
			hangperson.guessed_letters << pick
			puts "So sorry, that letter is not in our secret word..."
			puts hangperson.word_guessed.join (' ')
		end
		#now to catch any errors in our input from the user
	else
		puts "That was an invalid input. Please just put in one letter. Thanks!"
	end
end
	#deliver the bad news about our person
if hangperson.word_guessed.include? '_'
		puts "I'm so sorry. Our person has been.....hung."
	#now the good news! 
else
		puts "YOU DID IT! Our person has been saved.........for now :)"
	end
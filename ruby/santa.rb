class Santa 
	def speak
		puts "Ho, Ho, ho! Haaaappy holidays!"
	end
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end
	def initialize
		p "Initializing Santa instane..."
	end
end

claus=Santa.new
claus.speak
claus.eat_milk_and_cookies(choc chip)
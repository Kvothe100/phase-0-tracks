#create a class called Car

#attributes:
#car_type
#color
#miles

#instance methods:
#what type of car they want
#What color car do they want
#peels out method
#guess how many tickets user will get

#user interface to gather the data to push to an array
#create a loop that runs UNTIL told to stop


#iterate through the structure and print for the user to see
class Car
	attr_reader :tickets
	attr_accessor :car_type, :color, :miles

	def initialize(car_type, color)
		@car_type = car_type
		@color = color
		@tickets = [0,1,2,3,4,5,6]
	end

	def car_make(model)
		puts "You want a #{model}."
	end

	def car_color(colour)
		puts "The car will be #{colour}."
	end

	def num_of_tickets
		puts "You will probably get about #{@tickets.sample} tickets. Tsk Tsk Tsk."

	def peels_out
		p "***peels out***"
	end
end

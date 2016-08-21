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
	attr_accessor :car_type, :color, :doors

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

	def doors(num)
		puts "The car will have #{num} of doors."
	end

	def num_of_tickets
		puts "You will probably get about #{@tickets.sample} tickets. Tsk Tsk Tsk."

	def peels_out
		p "***peels out***"
	end
end

cars = []

finished = false
until finished == true

	puts "Want to design your dream car? (yes/no) or 'quit' if you are done."
	create_car = gets.downcase.chomp

	if create_car == "yes"
		puts "What type of car would you like?"
		kind_of_car = gets.chomp

		puts "What color will the car be?"
		color_of_car = gets.chomp

		puts "How many doors will the car have?"
		num_of_doors = gets.to_i

		car = Car.new(kind_of_car, color_of_car)
		car.car_make(kind_of_car)
		car.car_color(color_of_car)
		car.doors(num_of_doors)
		car.num_of_tickets
		car.peels_out

	elsif create_car == "quit"
		finished = true

	else
		puts "Fine. I don't want to make another car..."
		finished = true
	end

	cars << Car.new(kind_of_car, color_of_car)
end

cars.each do |car|
p cars
end
end

#I wasn't able to figure out how to push the random number of tickets to the array.
#It just keeps printing the full array of the tickets.
#Any ideas on how I can fix that would be greatly appreciated :) Thanks!
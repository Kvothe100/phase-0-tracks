class Dancer
	attr_accessor :arr, :age, :name
	def initialize(arr)
		@arr = arr
		@name = name
		@age = age
	end
	def name(name,age)
		@name
	end
	def age(name,age)
		@age
	end
	def age(name, age)
		@age
	end
	def pirouette
		puts "*twirls"
	end
	def bow
		puts "bows to partner."
	end
	def leaps
		puts "Leaps in the air!"
	end

end
#I ran into a major problem with my rspec. It will not run my tests. 
#it keeps saying 'ErrorLoad' and 'block in load_spec' when I tried 
#to run my tests. Very verrrryy frustrated right now because I wasted 
#over an hour trying to troubleshoot the issue with no luck
#I know my score will suffer but I care more about fixing the issue
#So any insight you have into it would be greatly appreciated.
#I feel like I know this material well enough and I know my score
#on this will be lower becuase I didn't complete all of the questions
#but I really care about fixing my issue with rspec. 
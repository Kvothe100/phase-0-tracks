#make an array
letters = ["a", "b", "c", "d", "e"]

#print the array to show the original data
#use the .each and .map! methods to modify the array
#for .each we will create an empty hash to pass the 
#new data into for my .map! method
change_letters = []

p letters
p change_letters

letters.each do |letter|
	change_letters << letter.next
end

letters.map! do |letter|
	letter.upcase
end

p change_letters
p letters
# the delete_if method will change the array based on the desired condition
#also I will be using the new change_letters array for these next two methods
change_letters.delete_if {|x| x >= "e"}
p change_letters

change_letters.reject! {|x| x <= "b"}
p change_letters

letters.select {|x| x > "B"}
p letters

letters.include?("B")


############
dogs = {
	"Fido" => 4,
	"Bender" => 6,
	"Maddie" => 12,
	"Mariah" => 20,
	"Bowzer" =>1
}

dogs.each do |name, age|
	puts "The name of the dog is #{name} and the age of the dog is #{age}."
end

dogs.delete_if {|name, age| age < 4}
p dogs

dogs.select! {|name, age| age > 4}
p dogs

dogs.keep_if {|name, age| age > 4}
p dogs
#this will return false because "dog" is not a name in the hash
dogs.has_key?("dog")
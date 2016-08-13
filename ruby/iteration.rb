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


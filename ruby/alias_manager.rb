#create an empty array to be pushed to later
new_name=[]
#make a loop for gathering the input
loop do
puts "What is your name? Type 'exit' if done creating names."
	spyname = gets.chomp
	new_name.push(spyname) #wanted to make sure that the original input was getting pushed up before the scrambling. Might be wrong here.
	break if spyname=='exit'
#print the scrambled name
	p spyname.tr("aeiouAEIOU","uaeioUAEIO").reverse
#push the scrambled name to the array
	new_name.push(spyname.tr("aeiouAEIOU","uaeioUAEIO").reverse)
end
#Alter user input to create a spyname.
#I had trouble figuring out a way to swap both the vowels and consonants at the same time. 
#So I just did the vowels and used .reverse to create a second alteration
#Couldn't figure out how to get the original name to print in a string with the altered name. I feel like I was close and got it to iterate at least, but I couldnt quite get what I wanted.
new_name.each do |name|
	puts "Your spy name is #{name}!"
end


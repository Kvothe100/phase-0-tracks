#create an empty hash

#The real name and alias name will be stored there

#user input to get the name

#split the name into two parts: a first and last name.
#Swap them

#split the letters in both names to be manipulated.
#I did some googling and found out a really cool
#string method .tr that will work really good for this
#....I think

#store the before and after name in the empty has

#use the key and value to print back the data for all of the inputs
#store it with a sort of |name, alias| block
#"#{alias} is really #{name}"

#this is my second time doing this so I really wanted to make the
#most condensed code as possible. I did my best to do that

spyname_hash = {}

loop do
puts "What is your name? Type 'quit' when finished."
name = gets.chomp
break if name == 'quit'

p name.tr("aeiouAEIOU", "uaeioUAEIO").split(' ').reverse!.join(' ')

new_name = name.tr("aeiouAEIOU", "uaeioUAEIO").split(' ').reverse!.join(' ')
spyname_hash[name] = new_name
end
spyname_hash.each do |name, spy|
	puts "#{spy} is really #{name}"
end
#prompt user with questions about the design they desire

puts "What is your name?"
name = gets.chomp 
puts "What is your age?"
age = gets.to_i
puts "How many children do you have? Use a number please."
num_kids= gets.to_i
puts "What type of decor theme do you want?"
decor_theme = gets.chomp

#use keys to store the data in a hash
decor = {
	:user_name => name,
	:user_age => age,
	:kids => num_kids,
	:theme => decor_theme
}
p decor

puts "What answer you like to update?"
update= gets.chomp
if update= "name"
	puts "What is your new name?"
		new_name=gets.chomp
	decor[:user_name] = new_name
elsif update= "age"
	puts "What is the new age?"
		new_age= gets.to_i
	decor[:user_age] = new_age
elsif update = "num_kids"
	puts "What is the new number of kids?"
		new_kids= gets.to_i
	decor[:kids] = new_kids
elsif update ="decor_theme"
	puts "What is your new theme?"
		new_theme= gets.chomp
	decor[:theme] = new_theme
else
	puts "Thanks! Have a great day"
end

#print the hash for the designer and user to see

#double check with the user to see if they want to update the data
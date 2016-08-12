#First create a prompt to gather initial data
#with some questions and gets.chomp

puts "Your name, please?"
name = gets.chomp

puts "What is your age?"
age = gets.to_i

puts "How many children do you have?"
children = gets.to_i

puts "What sort of theme would you like?"
theme = gets.chomp

puts "Your price range is over 500,000? (true/false)"
price = gets.chomp

#set the data in a hash with the info from our prompt
#using keys

decor = {
		:client_name => name,
		:client_age => age,
		:client_children => children,
		:decor_theme => theme,
		:price_range => price
}

#print filled out hash
p decor

#prompt user with the option of updating a piece of the hash
puts "What, if any, info would you like to update?"
update_info = gets.chomp
	if update_info == "name"
		puts "What is the new name?"
		new_name = gets.chomp
#put the updated data into the hash
			decor[:client_name] = new_name
	elsif update_info == "age"
		puts "What is the new age?"
		new_age = gets.to_i
			decor[:client_age] = new_age
	elsif update_info == "children"
		puts "What is the new number of kids?"
		new_kids = gets.to_i
			decor[:client_children] = new_kids
	elsif update_info == "theme"
		puts "What is the new theme you would like?"
		new_theme = gets.chomp
			decor[:decor_theme] = new_theme
	elsif update_info == "price"
		puts "The price is over 500,000 now? (true/false)"
		new_price = gets.chomp
			decor[:price_range] = new_price
	else 
		puts "Have a great day! We will begin working on your decor!"
end

p decor

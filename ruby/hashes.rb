#First create a prompt to gather initial data
#with some questions and gets.chomp

puts "Your name, please?"
name = gets.chomp

puts "What is your age?"
age = gets.chomp

puts "How many children do you have?"
children = gets.chomp

puts "What sort of decor them would you like?"
theme = gets.chomp

puts "Your price range is over 500,000? (true/false)"
price = gets.chomp

#set the data in a hash with the info from our prompt
#using keys

decor = {
		:client_name => name;
		:client_age => age;
		:Client_children => children;
		:decor_theme => theme;
		:price_range => price;
}
puts "How many employees will be processed?"
emp_number = gets.to_i

puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.to_i

puts  "What year were you born?"
year = gets.to_i

puts  "Our company serves garlic bread. Should we order some for you? (y/n)"
garlic_bread = gets.chomp

puts  "Would you like to enroll in the company's health insurance? (y/n)"
health_insurance = gets.chomp

if 2016 - year == age && garlic_bread == "y"
		puts "Probably not a vampire."
elsif 2016 - year != age && (garlic_bread == "n" || health_insurance == "n")
		puts "Probably a vampire."
elsif (2016 - year != age && garlic_bread =="n") && health_insurance == "n"
		puts "Almost certainly a vampire."
elsif name == "Drake Cula" || name == "Tu Fang"
		puts "Definitely a vampire."
else puts "Results inconclusive."
end

print "Actually, never mind! What do these questions have to do with anything? Let's all be freinds here"

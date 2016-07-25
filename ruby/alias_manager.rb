new_name=[]
loop do
puts "What is your name? Type 'exit' if done creating names."
	spyname = gets.chomp
	new_name.push(spyname)
	break if spyname=='exit'
	p spyname.tr("aeiouAEIOU","uaeioUAEIO").reverse
	new_name.push(spyname.tr("aeiouAEIOU","uaeioUAEIO").reverse)
end
#Alter user input to create a spyname.
#I had trouble figuring out a way to swap both the vowels and consonants at the same time. 
#So I just did the vowels and used .reverse to create a second alteration
new_name.each do |name|
	puts "#{a} is really #{b}!"
end



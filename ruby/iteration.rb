numbers = [1, 2, 3, 4, 5, 10, 15, 20]
puts "Here are my numbers."
p numbers

numbers.each do |digits|
	puts digits
end

p numbers
numbers.map! do |move_dig|
	move_dig.next
end
p numbers

hockey_players = {'Bobby Orr' => 4, 'Wayne Gretzky' => 99, 'Cam Neely' => 8, 'Sidney Crosby' =>87}
hockey_players.each do |name, uniform_number|
	puts "#{name} wore the number #{uniform_number}."
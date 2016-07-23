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

numbers.reject! {|x| x<10}
p numbers

#the below codes work fine on their own, just doesn't pring because of the code above it
numbers.reject! {|x| x>5}
p numbers

numbers.select{|num| num.even?}
p numbers

numbers.include?(100)
p numbers

#here are the hash iterations

hockey_players = {:'Bobby Orr' => 4, :'Wayne Gretzky' => 99, :'Cam Neely' => 8, :'Sidney Crosby' =>87}
hockey_players.each do |name, uniform_number|
	puts "#{name} wore the number #{uniform_number}."
end
#these also work great. Just together they won't all show up. But indiviually they work fine
new_players = hockey_players.select{|k, v| v>50}
new_players_2 = hockey_players.select{|k,v| v<50}
new_players_3 = hockey_players.delete_if{|k,v| v> 50}
new_players_4 = hockey_players.has_key?(50)

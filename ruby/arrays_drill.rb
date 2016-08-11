def add_to_array(array, item)
	array.push(item)
end

p add_to_array(["fix", 3, "its"], "array")

def build_array(x, y, z)
	new_array= []
	new_array.push(x, y, z)
end

p build_array(true, "yes", 4)

bedroom = []
p bedroom

bedroom.push("bed", "Fan", "Closet", "TV", "Desk")
p bedroom

bedroom.delete_at(2)
p bedroom

bedroom.insert(2, "Shoes")
p bedroom

bedroom.shift
p bedroom

bedroom.include?("Fan")
	if true
		puts "The item is in the array!"
	else
		puts "The item is NOT in the array!"
	end

clothes = ["Shirt", "Hat", "Pants"]

both = bedroom + clothes
p both
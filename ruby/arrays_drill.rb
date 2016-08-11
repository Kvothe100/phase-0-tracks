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
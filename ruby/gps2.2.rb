# Create a new list
# Add an item with a quantity to the list
# Remove an item from the list
# Update quantities for items in your list
# Print the list (Consider how to make it look nice!)

# ==================================
# h = {"a" => 1}

# h["a"] = 4

# Method to create a list 

# input: "some item
# output: {sdlfkjsdflkjdlkf: 2, asldkfjdlkjfdk: 4}

# def create_thing(string)
# end

# p creat_thing("as;ldkfjsdlkfjdlsifjd")




# input: string of items separated by spaces (example: "carrots apples cereal pizza")
  
# steps:
#initalize a grocery_list hash
#split string into an array and save that array to a variable ex. ["carrots", "apples"...] #("carrots apples").split(" ") 
#take that array and iterate over it using each
  #make each elament array a key in the grocery=hash   
  # set default quantity
  # for ex: grocery_list["item"] = 1 
# print the list to the console [can you use one of your other methods here?]

# output: hash
def grocery_list(items)
	#create an empty hash
  list = Hash.new
  array = items.split(' ')
	array.each do |item|
  	list[item.to_sym] = 1
  	end
 
  p(list)
 
  list
end



def add_item(item, quantity, list)

	if list[item.to_sym] 
	
		list[item.to_sym] += quantity

	else
		
		list[item.to_sym] = quantity
	end

	list
end
#make a method to remove an item from the list
#use the delete_if method
def remove_item(item, list)
	list.delete_if {|list_item| list_item == item.to_sym}
	#print the output
	list
end


#update the list with a new item
#check to make sure it already exists

def update(item, quantity, list)
	if list.include? item.to_sym
		list[item.to_sym] = quantity
	else 
		add_item(item, quantity, list)
	end
	list
end

#make a method that prints the updated list
def print(list)

	string = "Here is my shopping list: \n"
	list.each do |item, quantity|
		string = string + "#{item}: #{quantity} \n"
	end
	puts string
end


updated_list = grocery_list("carrots oranges juice cheeses")
p add_item("dog treats", 4, updated_list)
p remove_item("juice", updated_list)
p update("carrots", 7, updated_list)
print(updated_list)

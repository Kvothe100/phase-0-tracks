# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
    # make method that takes string as an argument
    # create empty hash 
    # split the string given
    # push split items into hash 
    
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input:quanitity,  string of items, hash 
# steps:With split method turn string to array, split the array into individual items. 
# output: hash with new item listed 

# Method to remove an item from the list
# input: string, item that they want to be removed
# steps: use .delete command on the string given. Search hash delete item if it's there.
# output: The hash with updated value. 

# Method to update the quantity of an item
# input: new_quantity 
# steps: take old quanitity and change it with new quanitity 
# output: updated quantity 

# Method to print a list and make it look pretty
# input: calling each item in hash with hash.each 
# steps: will itteriate through each item 
# output: using #{} tell user what they have and how many they have of each item on list. 

def create_list(user_input) 
  grocery_list = Hash.new  
  array = user_input.split(" ") 
  array.each do |item|  
    grocery_list[item] = 1  
end 
  grocery_list
end



  


shopping_cart = create_list("chicken celery breadcrumbs")


def add_item(item, quantity, grocery_list)
 if grocery_list[item]
   grocery_list[item] += quantity 
else 
  grocery_list[item] = quantity 
 end 
  grocery_list 
end 

p add_item("carrot", 4, shopping_cart)

def remove (item, grocery_list) 
  grocery_list.delete(item)
  grocery_list 
end 

p remove('carrot', shopping_cart)

def update(item,new_quantity, grocery_list)
  grocery_list[item] = new_quantity 
  grocery_list 
end 

p update("chicken", 5, shopping_cart)

def print(shopping_cart)
  shopping_cart.each do |item, quantity|
    puts "Here is your item #{item} : #{quantity}"
  end
  p shopping_cart
end

p print(shopping_cart)

  

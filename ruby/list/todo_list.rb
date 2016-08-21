class Todolist
	attr_accessor :arr
	
	def initialize(arr)
		puts "Starting list..."
		@arr = arr
	end

	def get_items
		@arr
	end

	def add_item(item)
		@arr << item
		@arr
	end

	def delete_item(item)
		@arr.delete(item)
		@arr
	end
	
	def get_item(index)
		@arr[index]
	end
end
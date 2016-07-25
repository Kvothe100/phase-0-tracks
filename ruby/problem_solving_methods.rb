
def fib(n)
	array = [0,1]
	while array.length < n
		array << array[-1] + array[-2] 
	end 
	return array
end


puts fib(10)

#define our sorting code method
def bubble_sort(array)
	n = array.length
#make our first loop
	loop do 
		swapped = false
#if element on the right is greater than the element on the right--swap them.
		(n-1).times do |i|
			if array[i] > array[i + 1]
				array[i], array[i + 1] = array[i + 1], array[i]#this is the swap
				swapped = true
			end
		end
		break if not swapped
	end
	array
end
#test our sort with an array!
a=[1,4,1,3,4,3]
bubble_sort(a)
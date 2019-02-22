arr=[1,2,6,4,8,9,20]
puts("Enter length of array")
arr1=[]
n=gets.chomp.to_i
for i in 0..n-1 do
	arr1=gets.chomp.to_i
end

def searcharray(a,num)

	for i in a do
		if num!=i 
			break
		else
			puts "Number  found"
		end
		
	end
end

searcharray(arr,20)
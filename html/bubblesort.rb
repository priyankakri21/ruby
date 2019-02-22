a=[7,3,5,19]
	
def bubbleSort(arr)
	
	b=arr.length-1
	
	for i in 0..b do
		
		for  j in 0..b-i-1 do
			
			#puts arr[j]
			
			#puts arr[j+1]
			#puts " "
			if arr[j] > arr[j+1]
				temp=arr[j]
				arr[j]=arr[j+1]
				arr[j+1]=temp
			end
			
		end
		
	end
end

bubbleSort(a)
for i in a do
	puts i
end


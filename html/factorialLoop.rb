def fact(num)
	facts=1
	while num>1
		
		facts=facts*num
		num-=1	
			
	end
	return facts
end
f=fact(5)
puts f

def fact(num)
	if num>1
		return num*fact(num-1)
	else 
		return 1
	end
end

puts "Enter any number to get factorial"
number=gets.chomp.to_i
facts=fact(number)
puts facts
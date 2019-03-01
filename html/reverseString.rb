s="abcdefgh"

def reverse_string(str)
	
	if str.length==1
		return str
	else
		return str[str.length - 1]+reverse_string(str[0,str.length-1])
	end
	
end

puts reverse_string(s)
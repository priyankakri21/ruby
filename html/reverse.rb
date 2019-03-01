str="abcdefgh"
def reverseString(s)
	len=s.length-1
	str1=""
	for i in 0..len  do
		str1[i]=s[len]
		len-=1
	end
	return str1
end
puts reverseString(str)
def palindrome(str)
	len = str.length
	l=len-1
	for i in 0..len/2 do 
		if str[i]==str[l]
			l-=1
		else
			return false
		end

	end
	return true
end

s="ABCBA"
s1="ABDEBA"
puts palindrome(s)
puts palindrome(s1)

str="abcde"
str1="abccba"
def palindrome(s,i,l)
	if i==l
		return true
	elsif s[i] != s[l]
		return false
	elsif i < l+1
		return palindrome(s,i+1,l-1)
	end
	return true	
		
end
puts palindrome(str,0,str.length-1)
puts palindrome(str1,0,str1.length-1)
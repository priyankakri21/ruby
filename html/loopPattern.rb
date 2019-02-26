
n=gets.to_i
for i in 1..n do
    for j in 1..i do
        print 'a'
    end
    puts 
end

puts "Another Pattern"

k=1
m=gets.to_i
while k<=m do
	k.downto 1 do |i| 
		print "*"
	end
	k+=1
	puts
end

puts "Another pattern1"
w=gets.to_i
l=1
while l<=w do
	1.upto l do 
		print "$"
	end
	puts
	l+=1
end

puts "Another pattern2"
j=1
while j<=6 do
	puts "&" * j
	j+=1
	
end

puts "Another pattern 3"
j=1
while j<=5 do
	puts ("$"*j).rjust(5)
	j+=1
	
end

puts "Anoter shorten method"
n=gets.to_i
n.times{|i| puts ("@"*(i+1))}

puts "Anoter shorten method1"
m=gets.to_i
m.times{|j| puts ("^"* (j+1)).rjust(m)}

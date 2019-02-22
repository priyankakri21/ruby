arr=[]
puts "Enter length of array"
n=gets.chomp.to_i
for i in 0..n-1 do
	arr[i]=gets.chomp.to_i
end
puts "\n"
for i in 1..n do
	puts arr[i]
end

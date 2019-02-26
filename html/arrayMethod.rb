arr=[1,3,5,6,7,8,9]
print arr[1..-3]  #=> [3, 5, 6, 7]
puts 
puts arr.at(0) #=>1
puts  
puts arr.first #=>1
puts arr.last  #=>9
puts arr.fetch(1)  #=>3
print arr.take(3)  #=> [1, 3, 5]
puts
print arr.drop(3) #=>[6, 7, 8, 9]
puts
puts "#{arr.length}  #{arr.count}  #{arr.count} #{arr.empty?}" #=>7 7 7 false
puts
puts arr.include?(2) #=>false
puts
puts arr.push(3) #=> 1 3  5 6 7 8 9 3
print arr  #=>[1, 3, 5, 6, 7, 8, 9, 3]
puts
print arr << 5  #=>[1, 3, 5, 6, 7, 8, 9, 3, 5]
puts
print arr  #=>[1, 3, 5, 6, 7, 8, 9, 3,  5]

puts 
print arr.unshift(12) #=>[12, 1, 3, 5, 6, 7, 8, 9, 3, 5]
puts
print arr.insert(5,"apple") #=>[12, 1, 3, 5, 6,"apple",7, 8, 9, 3, 5]
puts
puts "#{arr.shift }  #{arr.pop}  #{arr.delete_at(2)} #{arr.delete(3)} #{arr}" #=> 12 5 5 3 [1, 6, "apple", 7, 8, 9]
arr2=[nil,nil,3,4,nil,6]
print arr2  #=>[nil, nil, 3, 4, nil, 6]
puts 
print arr2.compact #=>[3, 4, 6]
puts
print arr2 #=>[nil, nil, 3, 4, nil, 6]
puts
print arr2.compact! #=>[3, 4, 6]
puts
print arr2 #=>[3, 4, 6]
puts
arr3=[2,3,4,3,4,5,6,5]
print arr3  #[2, 3, 4, 3, 4, 5, 6, 5]
puts
print arr3.uniq #=>[2, 3, 4, 5, 6]
puts
arr4=[6,7,8,9,10,11,12]
arr4.each {|a| print a-=10," "} #=>-4 -3 -2 -1 0 1 2
puts
print arr4 #=>[6, 7, 8, 9, 10, 11, 12]
puts
words = %w[first second third fourth fifth sixth]
str=""
words.reverse_each {|word| str+= " #{word}"}
puts str #=>" sixth fifth fourth third second first"
print arr4.map{ |a| 2*a} #=>[12, 14, 16, 18, 20, 22, 24]
puts
print arr4 #=>[6, 7, 8, 9, 10, 11, 12]
puts
print arr4.map!{|a| a**2} #=> [36, 49, 64, 81, 100, 121, 144]
puts
print arr4 #=>[36, 49, 64, 81, 100, 121, 144]
puts 
arr5=[1,2,3,4,5,6,7]
puts
print arr5.select{|a| a>3} #=>[4, 5, 6, 7]
puts 
print arr5.reject{|a| a<3} #=> [3, 4, 5, 6, 7]
puts
print arr5.drop_while{ |a| a<4} #=>[4, 5, 6, 7]
puts 
print arr5 #=>[1, 2, 3, 4, 5, 6, 7]






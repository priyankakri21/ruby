name=gets.chomp
age=gets.chomp

puts 'your name is '+name+' and your age is: '+age+' thanks for info'

time=Time.new
puts time.year
a=age.to_i
puts a
yob=time.year - a

puts 'your year of birth is: '+yob

puts 'Enter your year of  birth'
$yob=gets.chomp.to_i
def getage
	time=Time.new
	cy= time.year
	puts $yob
	age=cy-$yob
	puts "your age is #{age}"
end
getage
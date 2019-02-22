class Merge
	def arrmerge
		a1=[]
		a2=[]
		puts "Enter length of array"
		n=gets.chomp.to_i
		for i in 1..n do
			a1[i]=gets.chomp.to_i
		end
		
		puts "Enter length of array"
		m=gets.chomp.to_i
		for i in 1..m do
			a2[i]=gets.chomp.to_i
		end
		a1.push(*a2)
		for i in a1 do
			puts i
		end
	end
end
 m=Merge.new()
 m.arrmerge

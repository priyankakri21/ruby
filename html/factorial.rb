class Factorial
	@@num
	@@facts=1
	def getNum
		puts " Give Number to get factorial"
		@@num=gets.chomp.to_i
	end
	def fact
		#puts @num
	    #puts @@facts
		while @@num>1
			@@facts=@@facts*(@@num)
			#puts @@facts
			@@num-=1
			#puts @num
		end
			
	end
	def putFact
		puts @@facts
	end

end
f=Factorial.new()
f.getNum
f.fact
f.putFact
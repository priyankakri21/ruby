class Student
	def getDetail
		@name=gets.chomp
		@roll=gets.chomp
	end
	def showDetails
		puts @name
		puts @roll
	end
end	
obj=Student.new()
obj.getDetail()
obj.showDetails()
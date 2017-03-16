require 'pry'

class School

	attr_accessor :grade, :student

	def initialize(school)
		@school = school
		@roster = {}
	end

	def roster
		@roster
	end

 
	def add_student(student, grade)
		

		if roster[grade] 
			roster[grade] << student
		else 
			roster[grade] = []
			roster[grade] << student

		end
	end


	def grade(grade)
		roster[grade]

	end

	def sort
		@roster.each{ |k,v| v.sort! }
	end
end
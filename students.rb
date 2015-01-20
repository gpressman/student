class Student
  attr_accessor :scores, :first_name

  def initialize(scores, first_name)
  	@scores=scores
  	@first_name=first_name
  	
  end
	def average
		total=@scores.reduce(0) do |sum, score|
		sum+score
	end
	total/@scores.length
	
	 
	 # return average
	end

	def letter_grade
		case self.average
		when 0..59 then "F"
		when 60..69 then "D"
		when 70..79 then "C"
		when 80..89 then "B"
		when 90..100 then "A"

	end
		end

end


alex=Student.new([100,100,100,0,100], "alex")
john=Student.new([90, 70, 80, 50, 100], "john")
tim=Student.new([60, 80, 90, 100, 100], "tim")
stacy=Student.new([75, 60, 80, 100, 100], "stacy")
steve=Student.new([60, 80, 100, 100, 50], "steve")

def linear_search

students = [alex, john, tim, stacy, steve]
# p alex.scores

# p students[0].first_name == "alex"
# p students[0].scores.length == 5
# p students[0].scores[0] == students[0].scores[4]
# p students[0].scores[3] == 0
p alex.letter_grade

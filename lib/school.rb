# code here!
class School
    def initialize(school)
        @school = school
        @roster = {}
    end
    attr_accessor :roster
    
    # roster = {9 => [], 10 => [], 11 => [], 12 => []}
    
    def add_student(student_name,grade)
        #grade key should point to a value an empty array unless it already exists (isn't *nil*)
        unless @roster[grade] != nil 
            @roster[grade] = []
        end
        #shovel in the student's name into the grade
        @roster[grade] << student_name
    end
    
    def grade(num)
        @grade[num]
    end
    
    def sort
        roster.each do |grade, student_name| # QUESTION: does this automatically mean that the grade level and student name is in the roster and it is being iterated?
            roster[grade] = student_name.sort
        end
    end
end
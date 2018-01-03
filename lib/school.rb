# code here!
class School
    
     attr_accessor :roster
    def initialize(school_name)
        @school_name = school_name
        @roster  = {}
   end
   
 def add_student(student_name, student_grade)
        unless @roster[student_grade] != nil
        @roster[student_grade] = []
    end
        @roster[student_grade] << student_name
    end 
    def grade(grade_level)
        @roster[grade_level]
    end 
    def sort
        @roster.each do |student_grade,student_name|
            student_name.sort!
      end
    end
end
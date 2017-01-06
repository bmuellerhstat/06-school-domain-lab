# code here!
class School
    attr_accessor :roster
    def initialize(school_name)
        @school_name=school_name
        @roster={}
    end
    
    def add_student(name, grade)
        unless @roster[grade]!=nil
        @roster[grade] = [] 
    end
        @roster[grade] << name
    
    end
    
    def grade(student_grade)
        @student_grade = student_grade
        @student_grade =  @roster[student_grade]
    end
    
    def sort
        @roster.each do |grade,names|
        @roster[grade]=names.sort
    end
    end
end
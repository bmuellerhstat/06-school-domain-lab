# code here!
class School
    attr_accessor :student_name
    attr_reader :roster
    
    def initialize(school_name)
        @school_name = school_name
        @roster = {} #has an empty roster when initialized
    end
    
    def add_student(student_name, grade)
        unless @roster[grade] != nil #grade key should point to a value of an empty array unless nil
        @roster[grade] = [] 
        end
        @roster[grade] << student_name #sticks each student's grade with name 
    end
    
    def grade(number) 
        @roster[number] #retreive students from a grade
    end
    
    def sort
        @roster.each do |grade, student_name|
            student_name.sort! #sorts the students
        end
    end
end
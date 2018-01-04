# code here!

class School
    attr_accessor :roster
    
    def initialize(school_name)
        @school_name=school_name
        @roster={}
    end
    def add_student(student_name,grade)
        unless @roster[grade] != nil
        @roster[grade] = []
    end
        @roster[grade] << student_name
    end 
    def grade(num)
        @roster[num]
    end 
    def sort
        @roster.each do |grade,student_name|
            student_name.sort!
        end
    end
end
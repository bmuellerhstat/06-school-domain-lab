# code here!
class School
    attr_accessor :roster
    def initialize(school_name)
       @school_name = school_name
       @roster = {}
    end
    
    def add_student(student_name,grade)
        unless @roster[grade] != nil
           @roster[grade] = []
        end
        
        @roster[grade] << student_name
    end
    
    def grade(grade_num)
        @roster[grade_num]
    end
    
    def sort
        @roster.each do |grade, names|
            @roster[grade] = names.sort
        end
    end
end
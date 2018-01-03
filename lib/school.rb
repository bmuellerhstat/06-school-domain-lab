# code here!
class School
    attr_accessor :roster
    def initialize(name)
        @name = name
        @roster = {}
    end
    
    def add_student(student_name, grade)
        unless @roster[grade] != nil
            @roster[grade] = []
        end
        @roster[grade] << student_name
    end
    
    def grade(name) 
        @roster[name]
    end
    
    def sort
        @roster.each do |grade, names|
            names.sort!
        end
    end
end

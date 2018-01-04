# code here!
class School
    attr_accessor :roster
    
    def initialize(name)
        @name = name
        @roster = {}
    end
    
    def add_student(name, grade)
        if roster[grade].nil?
            roster[grade] = []
            roster[grade] << name
        else
            roster[grade] << name
        end
    end
    
    def grade(grade_level)
        roster[grade_level]
    end
    
    def sort
        roster.each do |grade, name|
            roster[grade] = name.sort
        end
    end
end

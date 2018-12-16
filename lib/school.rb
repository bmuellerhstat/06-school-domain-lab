# code here!
class School
    
    attr_accessor :roster
    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end
    
    def add_student(name, grade)
        if @roster[grade] == nil
            @roster[grade] = []
            @roster[grade] << name
        else
            @roster[grade] << name
        end
    end
    
    def grade(grade_level)
        @roster[grade_level]
    end

    def sort
        @roster_sorted = {}
        @roster.each do |grade, name|
           @roster_sorted[grade] = name.sort 
        end
        @roster_sorted
    end
    
end
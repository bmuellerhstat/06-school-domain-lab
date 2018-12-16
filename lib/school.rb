# code here!
class School
    def initialize(school_name)
       @school_name = school_name
       @roster = {}
    end
    
    def roster
        @roster
    end 
    
    def add_student(name, grade)
        if @roster[grade].nil?
            @roster[grade] = []
        end
        @roster[grade] << name
    end
    
    def grade(grade)
        @roster[grade]
    end
    
    def sort
        roster_sorted = {}
        @roster.each do |grade, name|
            roster_sorted[grade] = name.sort
        end
        roster_sorted
    end
    
end
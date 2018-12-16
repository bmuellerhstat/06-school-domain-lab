# code here!
class School
    def initialize(name)
        @name = name
        @roster = {}
    end
    
    attr_accessor :roster
    
    def add_student(name, grade)
        if @roster.keys.include?(grade)
            @roster[grade] << name
        else
            @roster[grade] = []
            @roster[grade] << name
        end
    end
    
    def grade(grade)
        @roster[grade]
    end
    
    def sort
        @roster_sorted = {}
        @roster.each do |grade, students_arr|
            @roster_sorted[grade] = students_arr.sort
        end
        @roster_sorted
    end
end
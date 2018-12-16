# code here!
class School
    # attr_accessor :name
    attr_accessor :roster
    
    def initialize(school)
        @school = school
        @roster = {}
    end
    
    def add_student(name, grade)
        if @roster[grade].nil?
            @roster[grade] = []
            @roster[grade] << name
        else
            @roster[grade] << name
        end
    end
    
    def grade(grade)
        @roster[grade]
    end
    
    def sort
        @roster.each do |grade, students|
            @roster[grade] = students.sort
        end
    end
end
# code here!
class School
    attr_accessor :roster
    def initialize(name)
        @name = name 
        @roster = {}
    end 
    def add_student(name,grade)
       unless @roster[grade] != nil #if it is non-exsitant we have to point it to the empty array (unless it is not nil(!nil)
       @roster[grade] = []
    end
    @roster[grade] << name 
    #shove the student's name in the grade
    end
    def grade(name) 
        @roster[name]
    end
    def sort
        @roster.each do |grade,names|
        @roster[grade]=names.sort
    end
    end
end 